import 'package:flutter/material.dart';
import 'package:panorama/panorama.dart';

class ThreeTechnology extends StatefulWidget {
  final String three_d_mode;

  const ThreeTechnology({
    Key? key,
    required this.three_d_mode,
  }) : super(key: key);

  @override
  State<ThreeTechnology> createState() => _ThreeTechnologyState();
}

class _ThreeTechnologyState extends State<ThreeTechnology> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Panorama(
          child: Image.network(
            widget.three_d_mode,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          ),
        ),
      ),
    );
  }
}
