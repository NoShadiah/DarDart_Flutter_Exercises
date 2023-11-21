import 'package:flutter/material.dart';
import 'dart:async';
import 'onboarding_screen.dart';


class SplashScreen extends StatefulWidget {
  // used the Ephemeral state for the splash screen
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => OnboardingScreenOne())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 15, 5, 57),
        child: CircleAvatar(
          backgroundColor: Color.fromARGB(255, 15, 5, 57),
          radius: 120,
          child: CircleAvatar(
            radius: 115,
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            child: CircleAvatar(
            radius: 110,
            backgroundImage: AssetImage("assets/images/sc_bg_rvd.png")
          ),
          ),
          
        )
        );
        // child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}

