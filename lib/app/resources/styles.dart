// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'colors.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: colorWhite,
  fontFamily: 'Open Sans',
  appBarTheme: AppBarTheme(
    color: purple,
    iconTheme: IconThemeData(color: colorBackground),
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      letterSpacing: 0.6
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: purple,
      statusBarIconBrightness: Brightness.light
    )
  ),
  colorScheme: ColorScheme.light(
    primary: colorPrimary,
    secondary: colorPrimaryDark,
    onPrimary: colorWhite,
    background: backgroundGrey,
    onSurface: colorWhite,
    surface: colorBackground,
    onBackground: colorWhite,
    onSecondary: backgroundGreyDark
  ),
  iconTheme: IconThemeData(
    color: colorBackground,
  ),
  textTheme: _lightTextTheme,
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: backgroundGrey,
  fontFamily: 'Open Sans',
  appBarTheme: AppBarTheme(
    color: purple,
    iconTheme: IconThemeData(color: colorBackground),
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      letterSpacing: 0.6
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: purple,
      statusBarIconBrightness: Brightness.light
    )
  ),
  colorScheme: ColorScheme.dark(
    primary: colorPrimary,
    secondary: colorPrimaryDark,
    onPrimary: colorBackground,
    background: backgroundGrey,
    onBackground: backgroundGreyDark,
    onSurface: backgroundGrey,
    surface: colorWhite,
    onSecondary: backgroundGreyDark
  ),
  iconTheme: IconThemeData(
    color: colorWhite,
  ),
  textTheme: _darkTextTheme,
);

final TextTheme _lightTextTheme = TextTheme(
  bodyText1: TextStyle(
    color: colorWhite
  ),
  bodyText2: const TextStyle(
    color: Colors.grey,
  ),
  headline1: TextStyle(
    color: colorBackground,
    letterSpacing: 0.5,
  ),
  headline2: TextStyle(
    color: colorBackground,
    letterSpacing: 0.5,
  ),
  headline3: TextStyle(
    color: colorBackground,
    letterSpacing: 0.5,
  ),
  headline4: TextStyle(
    color: colorBackground,
  ),
  headline5: TextStyle(
    color: colorBackground,
    letterSpacing: 0.5,
  ),
  headline6: TextStyle(
      color: colorBackground,
      letterSpacing: 0.5
  ),
  caption: TextStyle(
    color: colorBackground,
    letterSpacing: 0.3,
  ),
);

final TextTheme _darkTextTheme = TextTheme(
  bodyText1: TextStyle(
    color: colorWhite,
  ),
  bodyText2: const TextStyle(
    color: Colors.grey,
  ),
  headline1: TextStyle(
    color: colorWhite,
    letterSpacing: 0.5,
  ),
  headline2: TextStyle(
    color: colorWhite,
    letterSpacing: 0.5,
  ),
  headline3: TextStyle(
    color: colorWhite,
    letterSpacing: 0.5,
  ),
  headline4: TextStyle(
    color: colorWhite,
  ),
  headline5: TextStyle(
    color: colorWhite,
    letterSpacing: 0.5,
  ),
  headline6: TextStyle(
    color: colorWhite,
    letterSpacing: 1.0
  ),
  caption: TextStyle(
    color: colorWhite,
    letterSpacing: 0.3,
  ),
);