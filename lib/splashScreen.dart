import 'package:clientapp/Home.dart';
import 'package:clientapp/Profile.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'main.dart';
import 'dart:async';
import 'package:clientapp/main.dart';
import 'package:clientapp/Login.dart';
import 'package:clientapp/Onboarding.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(milliseconds: 6000),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => OnBoarding()
            )
            )
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFEE4E4),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'images/logo1.png'
                  )
              ),
            ),
          ),
        ),
      ),
    );
  }
}