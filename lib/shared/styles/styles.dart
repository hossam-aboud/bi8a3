// data - screen
import 'package:baqa3/shared/styles/colors.dart';
import 'package:flutter/material.dart';

var decorationContainer = BoxDecoration(
  color: whiteColor,
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(
      15.0,
    ),
    bottomRight: Radius.circular(
      15.0,
    ),
  ),
);

var decorationContainerSuper = BoxDecoration(
  color: accentColor,
  borderRadius: BorderRadius.all(
    Radius.circular(
      15.0,
    ),
  ),
);