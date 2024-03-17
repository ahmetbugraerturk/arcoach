import 'package:flutter/material.dart';

const myColorList = [
  Color(0xFF140209),
  Color(0xFF390D1E),
  Color(0xFF5D223A),
  Color(0xFF82425C),
  Color(0xFFA66D84),
  Color(0xFFCBA1B2),
  Color(0xFFFFF0F6)
];

const kLightTextColor = Color(0xFF140209);
const kDarkTextColor = Color(0xFFFFF0F6);

const kLightBackgroundColor = Color(0xFFFFF0F6);
const kLightPrimaryColor = Color(0xFF390D1E);
const kLightOnPrimaryColor = Color(0xFFFFF0F6);
const kLightSecondaryColor = Color(0xFF82425C);
const kLightOnSecondaryColor = Color(0xFFFFF0F6);

const kDarkBackgroundColor = Color(0xFF140209);
const kDarkPrimaryColor = Color(0xFF5D223A);
const kDarkOnPrimaryColor = Color(0xFFFFF0F6);
const kDarkSecondaryColor = Color(0xFF390D1E);
const kDarkOnSecondaryColor = Color(0xFF140209);

ThemeData kLightTheme = ThemeData(
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 96.0,
      fontWeight: FontWeight.w300,
      color: kLightTextColor,
    ),
    displayMedium: TextStyle(
      fontSize: 60.0,
      fontWeight: FontWeight.w400,
      color: kLightTextColor,
    ),
    displaySmall: TextStyle(
      fontSize: 48.0,
      fontWeight: FontWeight.w500,
      color: kLightTextColor,
    ),
    headlineLarge: TextStyle(
      fontSize: 48.0,
      fontWeight: FontWeight.w400,
      color: kLightTextColor,
    ),
    headlineMedium: TextStyle(
      fontSize: 36.0,
      fontWeight: FontWeight.w500,
      color: kLightTextColor,
    ),
    headlineSmall: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      color: kLightTextColor,
    ),
    titleLarge: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      color: kLightTextColor,
    ),
    titleMedium: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: kLightTextColor,
    ),
    titleSmall: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: kLightTextColor,
    ),
    bodyLarge: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: kLightTextColor,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: kLightTextColor,
    ),
    bodySmall: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      color: kLightTextColor,
    ),
    labelLarge: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: kLightTextColor,
    ),
    labelMedium: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: kLightTextColor,
    ),
    labelSmall: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      color: kLightTextColor,
    ),
  ),
  colorScheme: const ColorScheme.light(
    primary: kLightPrimaryColor,
    onPrimary: kLightOnPrimaryColor,
    secondary: kLightSecondaryColor,
    onSecondary: kLightOnSecondaryColor,
    background: kLightBackgroundColor,
  ),
  useMaterial3: true,
);
ThemeData kDarkTheme = ThemeData(
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 96.0,
      fontWeight: FontWeight.w300,
      color: kDarkTextColor,
    ),
    displayMedium: TextStyle(
      fontSize: 60.0,
      fontWeight: FontWeight.w400,
      color: kDarkTextColor,
    ),
    displaySmall: TextStyle(
      fontSize: 48.0,
      fontWeight: FontWeight.w500,
      color: kDarkTextColor,
    ),
    headlineLarge: TextStyle(
      fontSize: 48.0,
      fontWeight: FontWeight.w400,
      color: kDarkTextColor,
    ),
    headlineMedium: TextStyle(
      fontSize: 36.0,
      fontWeight: FontWeight.w500,
      color: kDarkTextColor,
    ),
    headlineSmall: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      color: kDarkTextColor,
    ),
    titleLarge: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      color: kDarkTextColor,
    ),
    titleMedium: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: kDarkTextColor,
    ),
    titleSmall: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: kDarkTextColor,
    ),
    bodyLarge: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: kDarkTextColor,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: kDarkTextColor,
    ),
    bodySmall: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      color: kDarkTextColor,
    ),
    labelLarge: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: kDarkTextColor,
    ),
    labelMedium: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: kDarkTextColor,
    ),
    labelSmall: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      color: kDarkTextColor,
    ),
  ),
  colorScheme: const ColorScheme.dark(
    primary: kDarkPrimaryColor,
    onPrimary: kDarkOnPrimaryColor,
    secondary: kDarkSecondaryColor,
    onSecondary: kDarkOnSecondaryColor,
    background: kDarkBackgroundColor,
  ),
  useMaterial3: true,
);
