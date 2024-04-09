import 'package:flutter/material.dart';
import 'package:islami/model/screen-details-args.dart';
import 'package:islami/screens/hadeth-details.dart';


import '../../utils/app-assets.dart';
import '../../utils/app-colors.dart';
import '../../utils/app-theme.dart';

class AhadetTab extends StatelessWidget {
  const AhadetTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex : 3,child: Center(child: Image.asset(AppAssets.ahadethTabLogo))),
        Expanded(flex: 7,
          child: buildScreenContent(),
        )


      ],
    );
  }

  Widget buildScreenContent() {
    return Column(
      children: [
        const Divider(thickness: 3,color: AppColors.primiary,),
        const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Expanded(child:(Text('Hadeth name ',
              textAlign: TextAlign.center,
              style: AppTheme.mediumTitleTextStyle,))),

          ],
        ),
        const Divider(thickness: 3,color: AppColors.primiary,),
        Expanded(flex : 7,
          child: buildSurasListView(),
        )



      ],

    );
  }

  ListView buildSurasListView() {
    return ListView.builder(
        itemCount:50,
        itemBuilder:(context, index){
          String hadethName = "${ index +1} الحديث رقم   ";
          return InkWell(
            onTap:(){
Navigator.pushNamed(context, HadethDetails.routename
    ,arguments:ScreenDetailsArgs(
    fileName: "h${index+1}.txt", Name: hadethName) );
            } ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Expanded(child: Text(
                    hadethName,

                    textAlign: TextAlign.center,
                    style: AppTheme.regularTitleTextStyle)),


              ],
            ),
          );
        }
    );
  }
  }

