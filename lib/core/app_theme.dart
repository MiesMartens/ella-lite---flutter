// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final lightTheme = ThemeData(
    useMaterial3: true,
    dialogBackgroundColor: Colors.white,
    scaffoldBackgroundColor: const Color.fromARGB(255, 240, 240, 240),
    primaryColor: AppTheme.appColor,
    textTheme: AppTheme.textTheme,
  );

  static Color appColor = HexColorNew('#e17494');
  static Color lightAppColor = HexColorNew('#1985fb');
  static Color secondaryAppColorDarkBlue = HexColorNew('#082b6e');
  static Color lightSecondaryAppColorDarkBlue = HexColorNew('#20407b');
  static Color secondaryAppColorDarkBlack = HexColorNew('#202020');
  static Color lightSecondaryAppColorDarkBlack = HexColorNew('#393939');
  static Color lightBackgroundColor = HexColorNew('#f1f1f1');
  static Color buttonIconColor = HexColorNew("#6D6D6D");
  static Color buttonColor = HexColorNew('#1a1a1a');
  static  Color darkText = HexColorNew('#646464');
  static  Color darkerText = HexColorNew('#030303');
  static  Color lightText = HexColorNew('#95979b');
  static Color deactivatedText = HexColorNew("#ededed");
  static const String fontName = 'Outfit';

  static const TextStyle buttonText = TextStyle(
      fontFamily: 'Outfit',
      fontSize: 24,
      color: Colors.white);

  static TextTheme textTheme = TextTheme(
    headlineLarge: heading,
    headlineMedium: subheading,
    headlineSmall: heading2,
    titleLarge: heading3,
    bodyMedium: smallText,
    bodySmall: smallText,
  );

  static  TextStyle heading = TextStyle(
      color: AppTheme.darkerText,
      fontWeight: FontWeight.bold,
      overflow: TextOverflow.fade,
      fontSize: 30,
      height: 1.2,
      letterSpacing: -0.2,
      fontFamily: fontName);

  static  TextStyle heading2 = TextStyle(
      color: AppTheme.darkerText,
      fontWeight: FontWeight.w600,
      overflow: TextOverflow.fade,
      fontSize: 18,
      letterSpacing: -0.2,
      fontFamily: fontName);

  static  TextStyle heading3 = TextStyle(
      color: AppTheme.darkerText,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      decorationThickness: 0.1,
      fontFamily: fontName);

  static  TextStyle subheading = TextStyle(
      color: AppTheme.darkerText,
      fontWeight: FontWeight.w500,
      overflow: TextOverflow.fade,
      fontSize: 24,
      letterSpacing: -0.2,
      fontFamily: fontName);

  static  TextStyle subheading2 = TextStyle(
      color: AppTheme.darkerText,
      fontWeight: FontWeight.w600,
      overflow: TextOverflow.fade,
      fontSize: 20,
      letterSpacing: -0.2,
      height: 1.1,
      fontFamily: fontName);

  static  TextStyle subheading3 = TextStyle(
      color: AppTheme.darkerText,
      fontWeight: FontWeight.w600,
      overflow: TextOverflow.fade,
      fontSize: 14,
      fontFamily: fontName);

  static  TextStyle smallText = TextStyle(
      color: AppTheme.lightText,
      fontWeight: FontWeight.normal,
      fontSize: 12,
      fontFamily: fontName);

  static Widget height(double height) {
    return SizedBox(height: height);
  }

  static Widget width(double width) {
    return SizedBox(width: width);
  }
}

class HexColorNew extends Color {
  HexColorNew(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }
}
