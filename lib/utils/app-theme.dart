import 'dart:ui';

import 'package:islami/utils/app-colors.dart';

abstract class AppTheme{
static  TextStyle appBarTextStyle = TextStyle(fontSize: 30,
fontWeight: FontWeight.bold,
color: AppColors.lightBlack);

static TextStyle mediumTitleTextStyle = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: AppColors.lightBlack
);
static TextStyle regularTitleTextStyle =TextStyle(fontSize: 25,
  fontWeight: FontWeight.w400,
  color: AppColors.lightBlack,);



}