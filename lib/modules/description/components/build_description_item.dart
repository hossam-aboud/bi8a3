import 'package:baqa3/modules/description/components/build_description_text.dart';
import 'package:flutter/material.dart';

class BuildDescriptionItem extends StatelessWidget {
  final String photo, description;

  const BuildDescriptionItem(
      {Key? key, required this.photo, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Positioned(
      top: height * 0.25,
      left: width * 0.05,
      right: width * 0.05,
      bottom: height * 0.1,
      child: Column(
        children: [
          Image.network(
            photo,
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
          ),
          Spacer(
            flex: 1,
          ),
          BuildDescriptionText(
            descriptionText: description,
          ),
          Spacer(
            flex: 8,
          ),
        ],
      ),
    );
  }
}
