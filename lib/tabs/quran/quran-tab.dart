import 'package:flutter/material.dart';
import 'package:islami/utils/app-assets.dart';
import 'package:islami/utils/app-colors.dart';
import 'package:islami/utils/app-theme.dart';
import 'package:islami/utils/constants.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex : 3,child: Center(child: Image.asset(AppAssets.quranTabLogo))),
        Expanded(flex: 7,
          child: Stack(
            alignment: Alignment.center,
            children: [
              buildScreenContent(),
              VerticalDivider(thickness: 3,color: AppColors.Orange,indent: 6,)
            ],
          ),
        )


      ],
    );
  }

  Expanded buildScreenContent() {
    return Expanded(flex: 7,
        child: Column(
          children: [
            Divider(thickness: 3,color: AppColors.Orange,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child:(Text('verses  ',
                  textAlign: TextAlign.center,
                  style: AppTheme.mediumTitleTextStyle,))),
                Expanded(child:(Text('sura name ',
                  textAlign: TextAlign.center,
                  style: AppTheme.mediumTitleTextStyle,))),

              ],
            ),
            Divider(thickness: 3,color: AppColors.Orange,),
            Expanded(flex : 7,
              child: buildSurasListView(),
            )



          ],

               ),
      );
  }

  ListView buildSurasListView() {
    return ListView.builder(
                itemCount:Constants.suraNames.length,
                itemBuilder:(context, index){
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: Text("${Constants.versesNumber[index]}",
                        textAlign: TextAlign.center,
                        style: AppTheme.regularTitleTextStyle,)),
                      Expanded(child: Text(Constants.suraNames[index],
                          textAlign: TextAlign.center,
                          style: AppTheme.regularTitleTextStyle)),

                    ],
                  );
                }
            );
  }
}
