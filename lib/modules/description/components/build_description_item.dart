import 'package:baqa3/modules/description/components/build_description_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BuildDescriptionItem extends StatelessWidget {
  final String photo, description;

  const BuildDescriptionItem(
      {Key? key, required this.photo, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Column(
        children: [
          Image(
            image: CachedNetworkImageProvider(
              photo,
            ),
            height: height * 0.3,
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
          ),
          BuildDescriptionText(
            descriptionText: description,
          ),
        ],
      ),
    );
  }
}
