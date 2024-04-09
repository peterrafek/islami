import 'package:flutter/material.dart';
import 'package:islami/model/screen-details-args.dart';
import 'package:islami/screens/sura-details.dart';
import 'package:islami/utils/app-assets.dart';
import 'package:islami/utils/app-colors.dart';
import 'package:islami/utils/app-theme.dart';
import 'package:islami/utils/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranTab extends StatelessWidget {
  static const String routename ="QuranTab";
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
                VerticalDivider(thickness: 3,color: AppColors.primiary,indent: 6,)
            ],
          ),
        )


      ],
    );
  }

  Widget buildScreenContent() {
    return Column(
      children: [
         Divider(),
         Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child:(Text('verses'
               ,
              textAlign: TextAlign.center,
              style: AppTheme.mediumTitleTextStyle,))),
            Expanded(child:(Text('suraName',
              textAlign: TextAlign.center,
              style: AppTheme.mediumTitleTextStyle,))),

          ],
        ),
        const Divider(),
        Expanded(flex : 7,
          child: buildSurasListView(),
        )



      ],

           );
  }

  ListView buildSurasListView() {
    return ListView.builder(
                itemCount:Constants.suraNames.length,
                itemBuilder:(context, index){
                  return InkWell(
                    onTap:(){
                    ScreenDetailsArgs arguments = ScreenDetailsArgs(
                        fileName: "${index+1}.txt",
                        Name: Constants.suraNames[index]);
                    Navigator.pushNamed(context, SuraDetails.routename,
                        arguments: arguments);
                  } ,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(child: Text("${Constants.versesNumber[index]}",
                          textAlign: TextAlign.center,
                          style: AppTheme.regularTitleTextStyle,)),
                        Expanded(child: Text(Constants.suraNames[index],
                            textAlign: TextAlign.center,
                            style: AppTheme.regularTitleTextStyle)),

                      ],
                    ),
                  );
                }
            );
  }
}
