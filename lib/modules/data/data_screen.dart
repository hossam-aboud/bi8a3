import 'package:baqa3/models/data_of_home/data_of_home_model.dart';
import 'package:baqa3/modules/data/components/build_body_data.dart';
import 'package:baqa3/shared/components/components.dart';
import 'package:flutter/material.dart';

class DataScreen extends StatefulWidget {
  final List<DataOfHomeModel> data;

  const DataScreen({Key? key, required this.data}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [
          DefaultBuildScaffoldBackgroundImage(),
         BuildDefaultArrowBack(),
         BuildBodyData(
           data:  widget.data,
         ),
        ],
      ),
    );
  }
}
