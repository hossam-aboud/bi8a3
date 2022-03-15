import 'dart:io';

import 'package:baqa3/layout/components/build_item_home.dart';
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
    double width = MediaQuery.of(context).size.width;
    return BlocConsumer<Baqa3Cubit, Baqa3States>(
        builder: (BuildContext context, Baqa3States state) {
          var cubit = Baqa3Cubit.get(context);
          return Scaffold(
            backgroundColor: Theme.of(context).primaryColor,
            body: Stack(
              children: [
                DefaultBuildScaffoldBackgroundImage(),
                BuildDefaultTitleScreens(
                  titleScreen: 'بقـــــــــــاع',
                ),
                Positioned(
                  top: height * 0.2,
                  left: width * 0.2,
                  right: width * 0.2,
                  child: Column(
                    children: _getBody(data: cubit.data),
                  ),
                ),
                BuildDefaultElevatedButton(
                  isCustomization: true,
                  textBtn: 'خــروج',
                  onPressed: () => exit(0),
                ),
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
