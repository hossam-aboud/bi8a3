import 'package:baqa3/shared/styles/colors.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData(
  fontFamily: 'Jannah',
  primaryColor: primaryColor,
  appBarTheme: AppBarTheme(
    elevation: 0.0,
    backgroundColor: transparentColor,
  ),
  colorScheme: const ColorScheme.light(
    secondary: accentColor,
  ),
  textTheme: TextTheme(
    headlineMedium: TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.w700,
      color: whiteColor,
    ),
    bodyMedium: TextStyle(
      letterSpacing: 3.0,
      color: whiteColor,
      fontWeight: FontWeight.w700,
      fontSize: 17.0,
    ),
    titleLarge: TextStyle(
      color: primaryColor,
      fontWeight: FontWeight.w700,
      fontSize: 60.0,
    ),
    headlineLarge: TextStyle(
      color: whiteColor,
      fontWeight: FontWeight.w900,
      fontSize: 40.0,
    ),
    titleMedium: TextStyle(
      color: Colors.black,
      fontSize: 25.0,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      height: 3.0,
      letterSpacing: 3.0,
      color: whiteColor,
      fontWeight: FontWeight.w700,
      fontSize: 17.0,
    ),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(accentColor),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              15.0,
            ),
          ),
        ),
      ),
    ),
  ),
);
