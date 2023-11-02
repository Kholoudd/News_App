import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/pages/home/homepage.dart';

class SplashScreen extends StatefulWidget {
  @override
  static const String routeName = "splash screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
        context,
        HomePage.routeName,
      );
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    var mediaquary = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/pattern.png",
            width: mediaquary.width,
            height: mediaquary.height,
          ),
          Center(
            child: Image.asset(
              "assets/images/logo.png",
            ),
          )
        ],
      ),
    );
  }
}
