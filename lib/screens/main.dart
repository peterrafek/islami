import 'package:flutter/material.dart';
import 'package:islami/screens/hadeth-details.dart';
import 'package:islami/screens/home-screen.dart';
import 'package:islami/screens/sura-details.dart';

import 'package:islami/tabs/quran/quran-tab.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
       routes: {
         HomeScreen.routename:(_) =>HomeScreen(),
         QuranTab.routename:(_)=> QuranTab(),
         SuraDetails.routename:(_)=>SuraDetails(),
         HadethDetails.routename:(_)=>HadethDetails(),

       },
initialRoute: HomeScreen.routename,
  );
  }

}