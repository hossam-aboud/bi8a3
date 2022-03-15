import 'package:baqa3/shared/components/constants.dart';
import 'package:flutter/material.dart';

class BuildLogoImage extends StatelessWidget {
  final double height, width;

  const BuildLogoImage({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: height * 0.15,
      left: width * 0.25,
      right: width * 0.25,
      child: Image.asset(
        logoImage,
      ),
    );
  }
}
