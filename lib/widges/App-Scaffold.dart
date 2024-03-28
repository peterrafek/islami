import 'package:flutter/material.dart';

import '../utils/app-assets.dart';
import '../utils/app-colors.dart';
import '../utils/app-theme.dart';

class AppScaffold extends StatelessWidget {
  final String title;
  final Widget? bottomNavigationBar ;
  final Widget body ;
  const AppScaffold({super.key,required this.title ,
    required this.body,
    this.bottomNavigationBar});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAssets.background))
        ),

        child: Scaffold(
          backgroundColor: AppColors.transparent,
          appBar:AppBar(
              backgroundColor: AppColors.transparent,
              centerTitle: true,
              elevation: 0,
              title:   Text(
                  title,
                  style:AppTheme.appBarTextStyle)),
          bottomNavigationBar: bottomNavigationBar,
          body:body ,
        )
    );



  }
}


