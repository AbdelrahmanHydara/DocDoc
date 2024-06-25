import 'package:flutter/material.dart';
import 'my_colors.dart';

ThemeData myLightTheme() => ThemeData(
  primaryColor: MyColors.myPrimaryColor,
  scaffoldBackgroundColor: MyColors.myWhite,
  appBarTheme: const AppBarTheme(
    backgroundColor: MyColors.myWhite,
    elevation: 0,
  ),
);