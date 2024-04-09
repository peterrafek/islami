import 'package:flutter/material.dart';
import 'package:islami/utils/app-colors.dart';
import 'package:islami/utils/app-theme.dart';

import '../../provider/settings_provider.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
 bool arSwitch = false;

bool darkModeSwitch =false;
 SettingsProvider provider =SettingsProvider();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('settings',style: Theme.of(context).textTheme.bodySmall,),
          buildSettingsRow(
            'العربيه', arSwitch,(newValue){
              arSwitch=newValue;
              setState(() {
                if (arSwitch){
                  provider.setCurrentLocale('ar');}
                  else{provider.setCurrentLocale('en');}

              });
          }
          ),
          buildSettingsRow(  'Dark mode',darkModeSwitch,(newValue){
            darkModeSwitch=newValue;
           if(darkModeSwitch){
             provider.setCurrentMode(ThemeMode.dark);
           }
             else{
                provider.setCurrentMode(ThemeMode.light);
    }
    }

            )

        ],
      ),
    );
  }

  Row buildSettingsRow(String title , bool switchValue  ,Function(bool) onChanged) {
    return Row(
        children: [
          SizedBox(width: 16,),
          Text(title,style: Theme.of(context).textTheme.bodyLarge,),
          Spacer(),
          Switch(value: switchValue, onChanged: onChanged ,activeColor: AppColors.primiary,
       )
        ],
      );
  }
}
