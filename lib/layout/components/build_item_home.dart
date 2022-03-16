import 'package:baqa3/shared/styles/colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BuildItemHome extends StatelessWidget {
  final String title, photo;
  final void Function() onTap;

  const BuildItemHome({
    Key? key,
    required this.title,
    required this.photo,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: InkWell(
          onTap: onTap,
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
            child: Stack(
              children: [
                Positioned(
                  top: 5.0,
                  bottom: 0.0,
                  left: 4.0,
                  right: 4.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image(
                      image: CachedNetworkImageProvider(photo),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 4.0,
                  right: 4.0,
                  bottom: 0.0,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          15.0,
                        ),
                        bottomRight: Radius.circular(
                          15.0,
                        ),
                      ),
                    ),
                    child: Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: transparentColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0,
                        shadows: [
                          Shadow(
                            color: whiteColor,
                            offset: Offset(
                              0.0,
                              -10.0,
                            ),
                          )
                        ],
                        decoration: TextDecoration.underline,
                        decorationColor: whiteColor,
                        decorationThickness: 3.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
