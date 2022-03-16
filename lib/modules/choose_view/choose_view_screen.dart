import 'package:baqa3/modules/choose_view/build_item_choose_view.dart';
import 'package:baqa3/shared/components/components.dart';
import 'package:flutter/material.dart';

class ChooseViewScreen extends StatefulWidget {
  final String vr_mode, three_d_mode;

  const ChooseViewScreen({
    Key? key,
    required this.vr_mode,
    required this.three_d_mode,
  }) : super(key: key);

  @override
  State<ChooseViewScreen> createState() => _ChooseViewScreenState();
}

class _ChooseViewScreenState extends State<ChooseViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [

          DefaultBuildScaffoldBackgroundImage(),
          BuildItemChooseView(
            threeDMode: widget.three_d_mode,
            vrMode: widget.vr_mode,
          ),
          BuildDefaultArrowBack(),
        ],
      ),
    );
  }
}
