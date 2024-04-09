import 'package:flutter/material.dart';
import 'package:islami/provider/settings_provider.dart';
import 'package:islami/screens/hadeth-details.dart';
import 'package:islami/screens/home-screen.dart';
import 'package:islami/screens/sura-details.dart';
import 'package:islami/splash/splash-screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/tabs/quran/quran-tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(ChangeNotifierProvider(
    create: (_) => SettingsProvider(),
      child: MyApp()));
}
class MyApp extends StatelessWidget{
  late SettingsProvider provider  ;
  @override
  Widget build(BuildContext context) {
provider = Provider.of(context);
  return MaterialApp(
    localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      AppLocalizations.delegate,
    ],
    themeMode:provider.CurrentMode,
    theme:ThemeData() ,
    darkTheme: ThemeData(),
    supportedLocales: [
      Locale('en')
      ,Locale('ar')],
       locale: Locale(provider.currentLocale),
       routes: {
         SplashScreen.routeName:(_)=>SplashScreen(),
         HomeScreen.routename:(_) =>HomeScreen(),
         QuranTab.routename:(_)=> QuranTab(),
         SuraDetails.routename:(_)=>SuraDetails(),
         HadethDetails.routename:(_)=>HadethDetails(),

       },
initialRoute: SplashScreen.routeName,
  );
  }

}