

import 'package:flutter/material.dart';
import 'package:islami/utils/app-colors.dart';

abstract class AppTheme{
static const TextStyle appBarTextStyle = TextStyle(fontSize: 30,
fontWeight: FontWeight.bold,
color: AppColors.accent);

static const TextStyle mediumTitleTextStyle = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: AppColors.accent
);
static const TextStyle regularTitleTextStyle =TextStyle(fontSize: 25,
  fontWeight: FontWeight.w400,
  color: AppColors.accent,);



static ThemeData lightTheme =ThemeData(
 scaffoldBackgroundColor: AppColors.transparent,
  primaryColor: AppColors.primiary,
  dividerTheme: DividerThemeData(
    thickness: 3,
    color:AppColors.primiary
  ),
  appBarTheme:
   const AppBarTheme(
      backgroundColor: AppColors.transparent,
          elevation: 0,
      centerTitle: true,
      titleTextStyle: appBarTextStyle

    ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: AppColors.accent,
    selectedIconTheme: IconThemeData(size: 32),
    unselectedIconTheme: IconThemeData(size: 26),
  ),
  textTheme: TextTheme(
      bodySmall:mediumTitleTextStyle ,
  bodyMedium:regularTitleTextStyle )
);
static ThemeData darkTheme =ThemeData(
    scaffoldBackgroundColor: AppColors.transparent,
    primaryColor: AppColors.PrimiaryDark,
    dividerTheme: DividerThemeData(
        thickness: 3,
        color:AppColors.accentDark
    ),
    appBarTheme:
     AppBarTheme(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: appBarTextStyle.copyWith(color:AppColors.white),

    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.accentDark,
      selectedIconTheme: IconThemeData(size: 32),
      unselectedIconTheme: IconThemeData(size: 26),
    ),
    textTheme: TextTheme(
        bodySmall:mediumTitleTextStyle.copyWith(color:AppColors.white),
        bodyMedium:appBarTextStyle.copyWith(color:AppColors.white),
      bodyLarge:regularTitleTextStyle.copyWith(color:AppColors.white),)
);
}