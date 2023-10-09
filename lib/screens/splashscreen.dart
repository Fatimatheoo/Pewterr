import 'package:flutter/material.dart';
import 'package:my_first_app/screens/login.dart';
import 'dart:async';
import '../utilitis/colors.dart';
import '../utilitis/images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  StartSplashTimer() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LogInScreen()));
    });
  }

  @override
  void initState() {
    super.initState();
    StartSplashTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppTheme.bgColor,
        child: Center(
          child: Image.asset(AppImages.logo),
        ),
      ),
    );
  }
}