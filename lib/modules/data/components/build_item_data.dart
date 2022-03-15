import 'package:baqa3/models/data_of_home/data_of_home_model.dart';
import 'package:baqa3/shared/styles/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BuildItemData extends StatelessWidget {
  final DataOfHomeModel dataOfHomeModel;
  final void Function() onTap;

  const BuildItemData({
    Key? key,
    required this.dataOfHomeModel,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: decorationContainerSuper,
        margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
        height: 200.0,
        child: Stack(
          children: [
            Positioned(
              top: 3.0,
              bottom: 0.0,
              left: 2.0,
              right: 2.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child:Image(image: CachedNetworkImageProvider(dataOfHomeModel.picture),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                )
              ),
            ),
            Positioned(
              left: 2.0,
              right: 2.0,
              bottom: 0.0,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 5.0),
                decoration: decorationContainer,
                child: Text(
                  dataOfHomeModel.title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
