import 'package:flutter/material.dart';
import 'package:islami/provider/settings_provider.dart';
import 'package:islami/tabs/hadeth/hadeth-tab.dart';
import 'package:islami/tabs/quran/quran-tab.dart';
import 'package:islami/tabs/radio/radio-tab.dart';
import 'package:islami/tabs/sebha/sebha-tab.dart';
import 'package:islami/tabs/settings/settings_tab.dart';
import 'package:islami/utils/app-assets.dart';
import 'package:islami/utils/app-colors.dart';
import 'package:islami/utils/app-theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';



class HomeScreen extends StatefulWidget{

  static const String routename = "HomeScreen";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  int CurrentTabIndex =0;
  Widget CurrentTab =QuranTab();

  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of(context);
    return Container(
decoration:  BoxDecoration(
  image: DecorationImage(
      image: AssetImage(settingsProvider.IsDarkMode()?
          AppAssets.darkBackground: AppAssets.background),
  )
),

      child: Scaffold(
backgroundColor: AppColors.transparent,
            appBar: buildAppBar(),
           bottomNavigationBar: buildBottomNavigationBar(),
        body:CurrentTab ,
        )
      );
  }

  Widget buildBottomNavigationBar()  {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: AppColors.primiary),
      child: BottomNavigationBar(

          unselectedIconTheme: IconThemeData(color: AppColors.white),
        showSelectedLabels: true,
        showUnselectedLabels:true ,
        backgroundColor: AppColors.primiary,
            currentIndex:CurrentTabIndex ,
            onTap: (index) {
              CurrentTabIndex = index;
              if (CurrentTabIndex == 0){
                CurrentTab = QuranTab();
            }
              else if (CurrentTabIndex ==1){
                CurrentTab=AhadetTab();
              }
              else if (CurrentTabIndex ==2){
                CurrentTab=SebhaTab();
              }
              else if (CurrentTabIndex ==3){
                CurrentTab=RadioTab();
              }
              else{CurrentTab=SettingsTab();}
              setState(() {

              });

            },
            items: [
              buildBottomNavigationBarItem( AppAssets.icQuran,"Quran"),
              buildBottomNavigationBarItem(AppAssets.icAhadeth, "Ahadeth"),
              buildBottomNavigationBarItem(AppAssets.icSebha, "Sebha"),
              buildBottomNavigationBarItem(AppAssets.icRadio, "Radio"),
              buildBottomNavigationBarItem(AppAssets.settingTabLogo, "setting"),

            ]
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(

      String  ImagePath ,
      String label,

      ) =>
      BottomNavigationBarItem(icon: ImageIcon(AssetImage(ImagePath))
        ,label:label

      );

  AppBar buildAppBar() {
    return AppBar(
              backgroundColor: AppColors.transparent,
              centerTitle: true,
               elevation: 0,
                 title:   Text(AppLocalizations.of(context)!.islami,
                  style:AppTheme.appBarTextStyle));
  }
}
