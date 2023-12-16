import 'package:flutter/material.dart';
import 'package:rural_education/src/constants/colors.dart';
import '../../../constants/sizes.dart';

class TElevatedButtonTheme{

  TElevatedButtonTheme._();

  //light theme
  static final lightElevatedButtonTheme=ElevatedButtonThemeData(
    style:ElevatedButton.styleFrom(
      elevation:0,
      shape:const RoundedRectangleBorder(),
      foregroundColor: tWhiteColor,
      backgroundColor: tSecondaryColor,
      side:const BorderSide(color: tSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );

  //dark theme
  static final darkElevatedButtonTheme=ElevatedButtonThemeData(
    style:ElevatedButton.styleFrom(
      elevation:0,
      shape:const RoundedRectangleBorder(),
      foregroundColor: tSecondaryColor,
      backgroundColor: tWhiteColor,
      side:const BorderSide(color: tSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );
}