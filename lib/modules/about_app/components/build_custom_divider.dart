import 'package:flutter/material.dart';

class BuildCustomDivider extends StatelessWidget {
  const BuildCustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      width: width * 0.5,
      child: Divider(
        color: Theme.of(context).colorScheme.secondary,
        thickness: 2.0,
      ),
    );
  }
}
