import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/model/screen-details-args.dart';
import 'package:islami/utils/app-theme.dart';
import 'package:islami/widges/App-Scaffold.dart';

class HadethDetails extends StatefulWidget {
  static const String routename = "Hadeth_details";
   HadethDetails({super.key});

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  String FileContent = "";

  late ScreenDetailsArgs args;


  @override
  Widget build(BuildContext context) {
    ScreenDetailsArgs args = ModalRoute
        .of(context)!
        .settings
        .arguments as ScreenDetailsArgs;
    if (FileContent.isEmpty) {
      readHadethFile();
    }

    return AppScaffold(
        title: args.Name,
        body: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
              color: Colors.white,),


            padding: EdgeInsets.all(24),
            margin: EdgeInsets.symmetric(horizontal: 28,
                vertical: MediaQuery
                    .of(context)
                    .size
                    .height * .07),

            child: SingleChildScrollView(
              child: Text(FileContent,
                textDirection: TextDirection.rtl
                , style: AppTheme.mediumTitleTextStyle,
                textAlign: TextAlign.center,),
            )));
  }

  void readHadethFile() async {
    Future<String> FutureFileContent = rootBundle.loadString(
        "assets/files/ahadeth/${args.fileName}");
    FileContent = await FutureFileContent;
    print(FileContent);

    setState(() {});
  }
}
