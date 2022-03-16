
import 'package:flutter/material.dart';

class BuildTextApp extends StatelessWidget {
  const BuildTextApp({Key? key,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'بقــــاع',
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
