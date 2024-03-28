

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
   late ScreenDetailsArgs args;


  @override
  Widget build(BuildContext context) {
    ScreenDetailsArgs args = ModalRoute.of(context)!.settings.arguments as ScreenDetailsArgs;
if(FileContent.isEmpty) {
  readSuraFile();
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

  void readSuraFile() async {
Future<String> FutureFileContent= rootBundle.loadString("assets/files/quran/${args.fileName}");
  FileContent =  await FutureFileContent;
print(FileContent);
  List<String> FileLines =FileContent.split("\n");
  for( int i =0;i < FileLines.length ;i++) {
    FileLines[i] += "{${i + 1}}";
  }
  FileContent= FileLines.join(" ");


  setState(() {});
  }
}
