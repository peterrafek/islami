import 'package:flutter/material.dart';
import 'package:islami/utils/app-colors.dart';
import 'package:islami/utils/app-theme.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(flex:6,
          child: Image.asset("assets/images/radio_image.png")),
      Expanded(flex: 4,
        child: Column(
          children: [
            Text("اذاعه القران الكريم",
            style: AppTheme.appBarTextStyle,),
         SizedBox(height: 75,),
         Row(mainAxisAlignment: MainAxisAlignment.center,
           children: [
           Icon(Icons.skip_previous,size: 50,color: AppColors.primiary),
           SizedBox(width: 25,),
           Icon(Icons.play_arrow,size: 50,color: AppColors.primiary),
             SizedBox(width: 25,),
           Icon(Icons.skip_next_rounded,size: 50,color: AppColors.primiary),
         ],


         )
          ],
        ),
      ),


    ],);
  }
}
