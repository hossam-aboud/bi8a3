

import 'package:baqa3/modules/about_app/components/build_custom_divider.dart';
import 'package:baqa3/modules/about_app/components/build_description_app.dart';
import 'package:baqa3/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class BuildTitleAboutApp extends StatelessWidget {
  final double height , width;

  const BuildTitleAboutApp({Key? key,
   required this.height,required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Positioned(
      top: height * 0.1,
      left: 0.0,
      right: 0.0,
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              style: Theme.of(context).textTheme.headlineMedium,
              children: <TextSpan>[
                TextSpan(
                  text: 'قسم',
                ),
                TextSpan(
                  text: ' تقنية الحاسب و المعلومات\n',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                TextSpan(
                  text: 'بالكلية التقنية للبنات بمكة المكرمة ',
                ),
              ],
            ),
          ),
        BuildCustomDivider(),
        BuildDescriptionApp(),
        ],
      ),
    );
  }
}
