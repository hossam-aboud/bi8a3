import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BuildShimmerItem extends StatelessWidget {
  const BuildShimmerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.grey[300]!,
      child: Container(
        height: height * 0.3,
        width: width * 0.5,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.all(
            Radius.circular(
              15.0,
            ),
          ),
        ),
      ),
    );
  }
}
