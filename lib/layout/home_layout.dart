import 'dart:io';

import 'package:baqa3/layout/components/build_item_home.dart';
import 'package:baqa3/layout/components/build_loading_data.dart';
import 'package:baqa3/layout/cubit/cubit.dart';
import 'package:baqa3/layout/cubit/states.dart';
import 'package:baqa3/models/data/data_model.dart';
import 'package:baqa3/modules/data/data_screen.dart';
import 'package:baqa3/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  void initState() {
    Baqa3Cubit.get(context).getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return BlocConsumer<Baqa3Cubit, Baqa3States>(
        builder: (BuildContext context, Baqa3States state) {
          var cubit = Baqa3Cubit.get(context);
          return Scaffold(
            backgroundColor: Theme.of(context).primaryColor,
            body: Stack(
              children: [
                DefaultBuildScaffoldBackgroundImage(),
                cubit.data.isNotEmpty
                    ? Positioned(
                        top: height * 0.12,
                        left: 15.0,
                        right: 15.0,
                        bottom: height * 0.09,
                        child: Column(
                          children: [
                            BuildDefaultTitleScreens(
                              titleScreen: 'بقـــــــــــاع',
                            ),
                            ..._getBody(data: cubit.data),
                            SizedBox(
                              height: height * 0.015,
                            ),
                            BuildDefaultElevatedButton(
                              isCustomization: true,
                              textBtn: 'خــروج',
                              onPressed: () async {
                                await playSound();

                                exit(0);
                              },
                            ),
                          ],
                        ),
                      )
                    : BuildLoadingData(),
              ],
            ),
          );
        },
        listener: (BuildContext context, Baqa3States state) {});
  }

  _getBody({required List<DataModel> data}) {
    return data
        .map(
          (element) => BuildItemHome(
            title: element.title,
            photo: element.photo,
            onTap: () {
              navigateTo(
                context: context,
                screen: DataScreen(
                  data: element.data,
                ),
              );
            },
          ),
        )
        .toList();
  }
}
