import 'package:baqa3/modules/about_app/about_app_screen.dart';
import 'package:baqa3/modules/splash/components/build_background_image.dart';
import 'package:baqa3/modules/splash/components/build_logo_image.dart';
import 'package:baqa3/modules/splash/components/build_text_app.dart';
import 'package:baqa3/shared/components/components.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          BuildBackgroundImage(height: height, width: width),
          BuildLogoImage(height: height, width: width),
          BuildTextApp(height: height),
          BuildDefaultElevatedButton(
            onPressed: () => removeAllBackScreen(
              context: context,
              screen: AboutAppScreen(),
            ),
            textBtn: 'دخــــول',
          ),
        ],
      ),
    );
  }
}
