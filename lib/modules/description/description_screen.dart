import 'package:baqa3/models/data_of_home/data_of_home_model.dart';
import 'package:baqa3/modules/choose_view/choose_view_screen.dart';
import 'package:baqa3/modules/description/components/build_description_item.dart';
import 'package:baqa3/shared/components/components.dart';
import 'package:flutter/material.dart';

class DescriptionScreen extends StatefulWidget {
  final DataOfHomeModel dataOfHomeModel;

  const DescriptionScreen({Key? key, required this.dataOfHomeModel})
      : super(key: key);

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [

          DefaultBuildScaffoldBackgroundImage(),

          Positioned(
            top: height * 0.12,
            left: 15.0,
            right: 15.0,
            bottom: height * 0.09,
            child: Column(
              children: [
                BuildDefaultTitleScreens(
                  titleScreen: widget.dataOfHomeModel.title,
                ),
                SizedBox(height: height * 0.01,),
                BuildDescriptionItem(
                  photo: widget.dataOfHomeModel.picture,
                  description: widget.dataOfHomeModel.description,
                ),
                BuildDefaultElevatedButton(
                  isCustomization: true,
                  textBtn: 'الـتــالي',
                  onPressed: () => navigateTo(
                    context: context,
                    screen: ChooseViewScreen(
                      three_d_mode: widget.dataOfHomeModel.mode_3d,
                      vr_mode: widget.dataOfHomeModel.vr_mode,
                    ),
                  ),
                ),
              ],
            ),
          ),


          BuildDefaultArrowBack(),
        ],
      ),
    );
  }
}
