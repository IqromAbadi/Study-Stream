import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studystream/app/modules/onboarding/views/onboarding_view.dart';

import '../controllers/splashscreens_controller.dart';

class SplashscreensView extends GetView<SplashscreensController> {
  const SplashscreensView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const OnboardingView()),
      );
    });

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/Bg_SplashScreens.jpg",
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
