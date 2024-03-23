import 'package:flutter/material.dart';
import 'package:islami/utils/app-assets.dart';

import 'package:islami/utils/app-colors.dart';



class QuranScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage(
             AppAssets.background))
    ),
      child: Scaffold(

            appBar: AppBar(
              backgroundColor: AppColors.transparent,
                centerTitle: true,
                elevation: 0,
             title:  const Text("islami",style: TextStyle(color: Colors.black),
             ),),
      ),
    );
  }

}