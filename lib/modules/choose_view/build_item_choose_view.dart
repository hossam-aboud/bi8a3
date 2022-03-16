import 'package:baqa3/modules/3d_technology/3d_technology_screen.dart';
import 'package:baqa3/modules/choose_view/build_elevated_button.dart';
import 'package:baqa3/modules/vr_technology/vr_technology_screen.dart';
import 'package:baqa3/shared/components/components.dart';
import 'package:flutter/material.dart';

class BuildItemChooseView extends StatelessWidget {
  final String vrMode, threeDMode;

  const BuildItemChooseView(
      {Key? key, required this.vrMode, required this.threeDMode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Positioned(
      top: height * 0.12,
      left: 15.0,
      right: 15.0,
      bottom: height * 0.09,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BuildDefaultTitleScreens(
            isCustomization: true,
            titleScreen: 'إختر طريقة العرض',
          ),
          Spacer(),
          BuildElevatedButton(
            onPressed: () => navigateTo(
              context: context,
              screen: VrTechnologyScreen(
                videoPlayer: vrMode,
              ),
            ),
            text: 'تقنية الواقع الإفتراضي',
          ),
          Spacer(
            flex: 2,
          ),
          BuildElevatedButton(
            onPressed: () => navigateTo(
              context: context,
              screen: ThreeTechnology(
                three_d_mode: threeDMode,
              ),
            ),
            text: 'صورة ثلاثية الأبعاد',
          ),
          Spacer(),
        ],
      ),
    );
  }
}
