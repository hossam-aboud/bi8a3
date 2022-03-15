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
    double width = MediaQuery.of(context).size.width;
    return Positioned(
      top: height * 0.22,
      left: width * 0.05,
      right: width * 0.05,
      bottom: height * 0.1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
