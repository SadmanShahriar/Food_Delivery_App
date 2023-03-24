import "package:flutter/material.dart";
import "package:food_delivery/ui/responsive/views/auth/login_screen.dart";
import "package:intro_screen_onboarding_flutter/introduction.dart";
import "package:intro_screen_onboarding_flutter/introscreenonboarding.dart";

class Onboarding extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: 'Buy & Sell',
      subTitle: 'Browse the menu and order directly from the application',
      imageUrl: 'assets/image/onboarding1.jpg',
    ),
    Introduction(
      title: 'Delivery',
      subTitle: 'Your order will be immediately collected and',
      imageUrl: 'assets/image/onboarding2.jpg',
    ),
    Introduction(
      title: 'Receive Money',
      subTitle: 'Pick up delivery at your door and enjoy groceries',
      imageUrl: 'assets/image/onboarding3.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroScreenOnboarding(
          backgroudColor: Colors.white,
          introductionList: list,
          onTapSkipButton: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            ); //MaterialPageRoute
          }),
    );
  }
}
