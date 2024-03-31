import 'package:flutter/material.dart';
import 'package:islami/utils/app-colors.dart';
import 'package:islami/utils/app-theme.dart';

class SebhaTab extends StatefulWidget {

   SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> azkar = ["سبحان الله","الله اكبر","لا الله الا الله","hghg"];

  int index =0 ;
double turns =0 ;
  int counter =0 ;

  @override

  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(flex: 2,
            child: AnimatedRotation(
              turns: turns,
              duration: Duration(seconds: 1),
                child: Image.asset("assets/images/sebha.png"))),
        Expanded(flex: 3,
            child: Column(
              children: [
                Text("عدد التسبيحات"
                ,style: AppTheme.mediumTitleTextStyle,),
                 SizedBox(height: 25,),
                Container(padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: AppColors.Orange
                  ),
                  child: Text("${counter}",
                    style: AppTheme.mediumTitleTextStyle,),

                ),
                SizedBox(height: 25,),
                Container(padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: AppColors.Orange,
                      borderRadius:
                      BorderRadius.circular(25)),
                  child: InkWell(onTap: (){
                    setState(() {

                    });
                    counter++;
                    turns +=.2;
                    if(counter>30)
                    {
                      counter=0;
                      index++;
                        if(index==azkar.length) {
                          index = 0;
                        }
                        }

                  },
                    child: Text("${azkar[index]}"
                    ,style:  AppTheme.mediumTitleTextStyle.copyWith(color: Colors.white),),
                  ),

                ),

                ])),


      ],
    );
  }
}
