import 'package:flutter/material.dart';
import 'package:p_alat_olahraga/home.dart';
import 'package:p_alat_olahraga/main_screen.dart';
import 'package:p_alat_olahraga/menu.dart';
import 'dart:async';

class SplashScreenPage extends StatefulWidget {
  SplashScreenPage({Key? key, navigateRoute}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return MainScreen();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Image.asset(
        "assets/images/olahraga.png",
        width: 400.0,
        height: 300.0,
      )),
    );
  }
}
