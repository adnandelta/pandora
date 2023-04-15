import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'dart:async';
import 'dart:ui';

import 'package:pandora/AssistantScreens/selectlanguage.dart';

void main() async {
  runApp(
    MaterialApp(
      home: SplashScreen(),
      title: "Animated-Login-Page-UI",
    ),
  );
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SelectLanduage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
            'https://assets7.lottiefiles.com/packages/lf20_2xNY0ddVd4.json',
            animate: true,
            height: 180,
            width: 600),
      ),
    );
  }
}
