
import 'package:flutter/material.dart';

class BuildTextApp extends StatelessWidget {
  final double height;
  const BuildTextApp({Key? key,
   required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      top: height * 0.4,
      child: Text(
        'بقــــاع',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
