import 'package:baqa3/layout/home_layout.dart';
import 'package:baqa3/modules/about_app/components/build_custom_divider.dart';
import 'package:baqa3/modules/about_app/components/build_description_app.dart';
import 'package:baqa3/modules/about_app/components/build_title_about_app.dart';
import 'package:baqa3/shared/components/components.dart';
import 'package:flutter/material.dart';

class AboutAppScreen extends StatefulWidget {
  const AboutAppScreen({Key? key}) : super(key: key);

  @override
  State<AboutAppScreen> createState() => _AboutAppScreenState();
}

class _AboutAppScreenState extends State<AboutAppScreen> {
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
            left: 0.0,
            right: 0.0,
            bottom: height * 0.09,
            child: Column(
              children: [
                BuildTitleAboutApp(),
                BuildCustomDivider(),
                BuildDescriptionApp(),
                BuildDefaultElevatedButton(
                  isCustomization: true,
                  textBtn: 'دخــــول',
                  onPressed: () async {
                    await playSound();
                    navigateTo(
                    context: context,
                    screen: HomeLayout(),
                  );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
