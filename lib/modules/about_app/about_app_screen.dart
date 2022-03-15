import 'package:baqa3/layout/home_layout.dart';
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
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [
          DefaultBuildScaffoldBackgroundImage(),
          BuildTitleAboutApp(
            height: height,
            width: width,
          ),
          BuildDefaultElevatedButton(
            isCustomization: true,
            textBtn: 'دخــــول',
            onPressed: () => navigateTo(
              context: context,
              screen: HomeLayout(),
            ),
          ),
        ],
      ),
    );
  }
}
