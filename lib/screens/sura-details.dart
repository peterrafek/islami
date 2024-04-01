

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/model/screen-details-args.dart';
import 'package:islami/utils/app-theme.dart';
import 'package:islami/widges/App-Scaffold.dart';

class SuraDetails extends StatefulWidget {
  static const String routename = "sura-details";
   SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
   String FileContent ="" ;


  @override
  Widget build(BuildContext context) {
    ScreenDetailsArgs args = ModalRoute.of(context)!.settings.arguments as ScreenDetailsArgs;
if(FileContent.isEmpty) {
  readSuraFile(args.fileName);
}

    return AppScaffold(
        title:args.Name,
        body: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
              color: Colors.white,),


            padding: EdgeInsets.all(24),
            margin: EdgeInsets.symmetric(horizontal: 28,
            vertical: MediaQuery.of(context).size.height* .07),

            child: SingleChildScrollView(
              child: Text (FileContent,
                textDirection: TextDirection.rtl
                ,style: AppTheme.mediumTitleTextStyle,
                textAlign: TextAlign.center,),
            )));
  }

 Future <void> readSuraFile(String fileName) async {
Future<String> FutureFileContent=
rootBundle.loadString("assets/files/quran/$fileName");
  FileContent =  await FutureFileContent;

  List<String> FileLines =FileContent.split("\n");
  for( int i =0;i < FileLines.length ;i++) {
    if (FileLines[i].isNotEmpty) {
      FileLines[i] += "(${i + 1})";
    }

  }
  FileContent= FileLines.join(" ");


  setState(() {});
print(FileContent);
  }
}
