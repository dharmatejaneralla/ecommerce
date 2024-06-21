import 'package:ecommerce/utils/theme/custom_themes/AppBar_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/chiptheme.dart';
import 'package:ecommerce/utils/theme/custom_themes/outlinedbutton_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/text_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/bottomsheet_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/elevatedbutton_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/textfield_theme.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  AppThemeData._();

  static ThemeData lightthemedata = ThemeData(
    useMaterial3: true,
    primaryColor: Colors.blue,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Poppins',
    textTheme: textTheme.lightTextTheme,
    elevatedButtonTheme: elevatedButtonTheme.lightElevatedbutton,
    appBarTheme: Appbartheme.lightAppBarTheme,
    bottomSheetTheme: BottomsheetTheme.lightBottomSheetTheme,
    checkboxTheme: CheckBoxtheme.lightCheckboxtheme,
    chipTheme: Chip_Theme.lightChiptheme,
    outlinedButtonTheme: OutlinedButtontheme.lightOutlinedButtonotheme,
    inputDecorationTheme: TextFieldtheme.lightinputDecoration,
  );

  static ThemeData darkthemedata = ThemeData(
    useMaterial3: true,
    primaryColor: Colors.blue,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    fontFamily: 'Poppins',
    textTheme: textTheme.darkTextTheme,
    elevatedButtonTheme: elevatedButtonTheme.darkElevatedbutton,
    appBarTheme: Appbartheme.darkAppBarTheme,
    bottomSheetTheme: BottomsheetTheme.darkBottomSheetTheme,
    checkboxTheme: CheckBoxtheme.darkCheckboxtheme,
    chipTheme: Chip_Theme.darkChiptheme,
    outlinedButtonTheme: OutlinedButtontheme.darkOutlinedButtonotheme,
    inputDecorationTheme: TextFieldtheme.darkinputDecoration,
  );
}
