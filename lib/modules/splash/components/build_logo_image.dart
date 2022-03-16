import 'package:flutter/material.dart';

class BuildLogoImage extends StatelessWidget {

  const BuildLogoImage({Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return  Image.asset(
      'assets/images/logo.png',
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
      height: height * 0.25,
      width: height * 0.25,
    );
  }
}
