import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/presentation/views/home_view.dart';
import 'package:page_transition/page_transition.dart';

class splashview extends StatelessWidget {
  const splashview({super.key});
  // @override
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 200,
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.rightToLeft, //سبب عدم الشغل ؟
      splash: Image.asset("assets/images/6169043.webp"),

      nextScreen: homeview(),
      animationDuration: Duration(seconds: 2),
    );
  }
}
