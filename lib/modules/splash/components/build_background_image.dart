import 'package:baqa3/shared/components/constants.dart';
import 'package:flutter/material.dart';

class BuildBackgroundImage extends StatelessWidget {
  final double height, width;

  const BuildBackgroundImage(
      {Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(splashBackgroundImage),
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
}
