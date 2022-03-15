import 'package:baqa3/models/data_of_home/data_of_home_model.dart';
import 'package:baqa3/modules/data/components/build_item_data.dart';
import 'package:baqa3/modules/description/description_screen.dart';
import 'package:baqa3/shared/components/components.dart';
import 'package:flutter/material.dart';

class BuildBodyData extends StatelessWidget {
  final List<DataOfHomeModel> data;

  const BuildBodyData({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Positioned(
      top: height * 0.15,
      left: 0.0,
      right: 0.0,
      bottom: 20.0,
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _getBody(context)),
      ),
    );
  }

  _getBody(BuildContext context) {
    return data
        .map((element) => BuildItemData(
              dataOfHomeModel: element,
              onTap: () => navigateTo(
                context: context,
                screen: DescriptionScreen(
                  dataOfHomeModel: element,
                ),
              ),
            ))
        .toList();
  }
}
