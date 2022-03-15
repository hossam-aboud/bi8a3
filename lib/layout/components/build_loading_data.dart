import 'package:baqa3/layout/components/build_shimmer_item.dart';
import 'package:flutter/material.dart';

class BuildLoadingData extends StatelessWidget {
  const BuildLoadingData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Positioned(
      top: height * 0.2,
      left: width * 0.2,
      right: width * 0.2,
      bottom: 15.0,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) => BuildShimmerItem(),
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          height: 15.0,
        ),
        itemCount: 2,
      ),
    );
  }
}
