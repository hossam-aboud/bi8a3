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
    double width = MediaQuery.of(context).size.width;

    return Positioned(
      top: height * 0.25,
      left: width * 0.05,
      right: width * 0.05,
      bottom: height * 0.1,
      child: Column(
        children: [

       Expanded(
         child: Image(image: CachedNetworkImageProvider(photo ,

         ),
           filterQuality: FilterQuality.high,
           fit: BoxFit.cover,
           height: 150.0,
         ),
       ),
          // Expanded(
          //   child: Image.network(
          //     photo,
          //     filterQuality: FilterQuality.high,
          //     fit: BoxFit.cover,
          //     height: 150.0,
          //   ),
          // ),

          Expanded(
            child: BuildDescriptionText(
              descriptionText: description,
            ),
          ),

        ],
      ),
    );
  }
}
