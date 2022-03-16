import 'package:flutter/material.dart';

class BuildDescriptionText extends StatelessWidget {
  final String descriptionText;
  const BuildDescriptionText({Key? key, required this.descriptionText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      descriptionText,
      textAlign: TextAlign.center,
      maxLines: 4,
      textDirection: TextDirection.rtl,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
