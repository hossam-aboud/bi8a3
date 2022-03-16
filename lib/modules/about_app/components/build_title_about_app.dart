import 'package:flutter/material.dart';

class BuildTitleAboutApp extends StatelessWidget {
  const BuildTitleAboutApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        style: Theme.of(context).textTheme.headlineMedium,
        children: <TextSpan>[
          TextSpan(
            text: 'قسم',
          ),
          TextSpan(
            text: ' تقنية الحاسب و المعلومات\n',
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          TextSpan(
            text: 'بالكلية التقنية للبنات بمكة المكرمة ',
          ),
        ],
      ),
    );
  }
}
