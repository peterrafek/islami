import 'package:flutter/material.dart';
import 'package:islami/utils/app-assets.dart';
import 'package:islami/utils/app-colors.dart';
import 'package:islami/utils/app-theme.dart';




class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
decoration: const BoxDecoration(
  image: DecorationImage(
      image: AssetImage(AppAssets.background))
),

      child: Scaffold(
backgroundColor: AppColors.transparent,
            appBar: AppBar(
                backgroundColor: AppColors.transparent,

                centerTitle: true,
        elevation: 0,
              title:  const Text("islami",
                  style:AppTheme.appBarTextStyle)

      )
        ,)
      );
  }
}
