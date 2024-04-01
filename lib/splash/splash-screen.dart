import 'package:flutter/material.dart';
import 'package:islami/screens/home-screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName ="SplashScreen";
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1),() {
      Navigator.pushReplacementNamed(context,HomeScreen.routename);
    },
      );
    return Scaffold(
      body: Image.asset(
          "assets/images/splash.png",
          fit: BoxFit.fill,
      height: double.infinity,
      width: double.infinity,),

    );
  }
}
