import 'package:flutter/material.dart';

final BorderRadius radius = BorderRadius.circular(6.0);

final ThemeData appTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: Colors.white,
  primaryColor: const Color(0xff585CE5),
  primaryColorLight: const Color(0xff1ec4f5),
  splashColor: const Color(0xff585CE5),
  disabledColor: Colors.grey[500],
  highlightColor: Colors.grey[200],
  hintColor: Colors.black,
  dividerColor: const Color(0xffF4F7F8),

  ///appBar theme
  appBarTheme: const AppBarTheme(
    color: Colors.transparent,
    elevation: 0.0,
    iconTheme: IconThemeData(color: Colors.black),
  ),

  ///text theme
  textTheme: TextTheme(
    bodyLarge: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
    bodyMedium: const TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
    titleMedium: const TextStyle(fontWeight: FontWeight.w500),
    titleSmall: TextStyle(color: Colors.grey[400], fontWeight: FontWeight.w400),
  ).apply(bodyColor: Colors.black),
  colorScheme: ColorScheme.fromSwatch(
    backgroundColor: const Color(0xffF4F7F8),
  ),
);

final ThemeData darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: Colors.black,
  primaryColor: const Color(0xff585CE5),
  primaryColorLight: const Color(0xff1ec4f5),
  splashColor: const Color(0xff585CE5),
  disabledColor: Colors.grey[500],
  highlightColor: Colors.grey[200],
  hintColor: Colors.black,
  dividerColor: const Color(0xff1e1f20),

  ///appBar theme
  appBarTheme: const AppBarTheme(
    color: Colors.transparent,
    elevation: 0.0,
    iconTheme: IconThemeData(color: Colors.white),
  ),

  ///text theme
  textTheme: TextTheme(
    bodyLarge: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
    bodyMedium: const TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
    titleMedium: const TextStyle(fontWeight: FontWeight.w500),
    titleSmall: TextStyle(color: Colors.grey[400], fontWeight: FontWeight.w400),
  ).apply(bodyColor: Colors.white),
  colorScheme: ColorScheme.fromSwatch(
    backgroundColor: const Color(0xff1e1f20),
  ),
);

const TextStyle bottomBarTextStyle = TextStyle(
  fontSize: 15.0,
  color: Colors.white,
  fontWeight: FontWeight.w400,
);

/// NAME         SIZE  WEIGHT  SPACING
/// headline1    96.0  light   -1.5
/// headline2    60.0  light   -0.5
/// headline3    48.0  regular  0.0
/// headline4    34.0  regular  0.25
/// headline5    24.0  regular  0.0
/// headline6    20.0  medium   0.15
/// titleMedium    16.0  regular  0.15
/// titleSmall    14.0  medium   0.1
/// body1        16.0  regular  0.5   (bodyLarge)
/// body2        14.0  regular  0.25  (bodyMedium)
/// button       14.0  medium   1.25
/// caption      12.0  regular  0.4
/// overline     10.0  regular  1.5
