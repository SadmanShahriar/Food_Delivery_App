import 'package:flutter/material.dart';
import 'package:food_delivery/ui/responsive/views/onboarding.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  chooseScreen(context) {
    Future.delayed(
        Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Onboarding())));
  }
  @override
  void initState() {
    chooseScreen(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/image/bibimbap.png',
          width: 200,
        ),
      ),
    );
  }
}
