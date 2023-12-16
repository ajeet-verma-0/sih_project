import 'package:flutter/material.dart';
import 'package:rural_education/src/constants/colors.dart';
import 'package:rural_education/src/constants/sizes.dart';

class TOutlinedButtonTheme{
  TOutlinedButtonTheme._();

  //light theme
static final lightOutlinedButtonTheme=OutlinedButtonThemeData(
  style:OutlinedButton.styleFrom(
    shape:const RoundedRectangleBorder(),
    foregroundColor: tSecondaryColor,
    side:const BorderSide(color: tSecondaryColor),
    padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
  ),
);

  //dark theme
  static final darkOutlinedButtonTheme=OutlinedButtonThemeData(  style:OutlinedButton.styleFrom(
    shape:const RoundedRectangleBorder(),
    foregroundColor: tWhiteColor,
    side:const BorderSide(color: tWhiteColor),
    padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
  ),);
}

