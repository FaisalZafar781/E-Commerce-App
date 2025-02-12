import 'package:af_store/utils/theme/custom_theme.dart/appbar_theme.dart';
import 'package:af_store/utils/theme/custom_theme.dart/bottom_sheet_theme.dart';
import 'package:af_store/utils/theme/custom_theme.dart/checkbox_theme.dart';
import 'package:af_store/utils/theme/custom_theme.dart/chip_theme.dart';
import 'package:af_store/utils/theme/custom_theme.dart/outlined_button_theme.dart';
import 'package:af_store/utils/theme/custom_theme.dart/text_feild_theme.dart';
import 'package:af_store/utils/theme/custom_theme.dart/text_theme.dart';
import 'package:af_store/utils/theme/custom_theme.dart/elevated_button_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: FTextTheme.lightTextTheme,
    chipTheme: FchipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: FAppBarTheme.lightAppBarTheme,
    checkboxTheme: FCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: FBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: FElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: FOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: FTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: FTextTheme.darkTextTheme,
    chipTheme: FchipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: FAppBarTheme.darkAppBarTheme,
    checkboxTheme: FCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: FBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: FElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: FOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: FTextFormFieldTheme.darkInputDecorationTheme,
  );
}

# touched on 2025-05-28T22:56:05.754479Z
# touched on 2025-05-28T23:03:23.726425Z
# touched on 2025-05-28T23:05:03.384746Z
# touched on 2025-05-28T23:05:10.792628Z
# touched on 2025-05-28T23:06:30.916012Z