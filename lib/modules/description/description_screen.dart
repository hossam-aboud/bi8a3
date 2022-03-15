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
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [
          BuildDefaultTitleScreens(
            isCustomization: true,
            titleScreen: widget.dataOfHomeModel.title,
          ),
          DefaultBuildScaffoldBackgroundImage(),
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
          BuildDefaultArrowBack(),
        ],
      ),
    );
  }
}