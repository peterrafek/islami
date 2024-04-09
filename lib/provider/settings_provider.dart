import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String currentLocale = 'en';
  ThemeMode CurrentMode = ThemeMode.light;
  void setCurrentMode (ThemeMode newThemMode){
    CurrentMode=newThemMode;
    notifyListeners();

  }

  bool IsDarkMode()=>CurrentMode ==ThemeMode.dark
  ;

  void setCurrentLocale(String newLocale) {
    currentLocale = newLocale;
    notifyListeners();
  }
}