import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.indicator,
            children: [
              Container(
                color: const Color(0xff0D0D0F),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/Onboar1.png",
                    ),
                    const Text(
                      "Welcome to StudyStream",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Color(0XffD9D9D9),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      "Flowing Knowledge, Streaming\nSuccess",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color(0XffD9D9D9),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 50),
                    SizedBox(
                      width: 130,
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              controller.indicator.nextPage(
                                  duration: const Duration(
                                    milliseconds: 300,
                                  ),
                                  curve: Curves.easeInOut);
                            },
                            child: const Text(
                              "Skip",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Color(0Xff17E6B7),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.indicator.nextPage(
                                  duration: const Duration(
                                    milliseconds: 300,
                                  ),
                                  curve: Curves.easeInOut);
                            },
                            child: const Text(
                              "Next",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Color(0Xff1663F2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color(0xff0D0D0F),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/Onboar2.png",
                    ),
                    const Text(
                      "Unlock Your Learning Potential",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Color(0XffD9D9D9),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      "Knowledge flows, success streams\nwith StudyStream",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color(0XffD9D9D9),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 50),
                    SizedBox(
                      width: 180,
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.toNamed('/login');
                            },
                            child: const Text(
                              "Sign In",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Color(0Xff17E6B7),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed('/register');
                            },
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Color(0Xff1663F2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
            onPageChanged: (index) {
              controller.page.value = index;
            },
          ),
          Positioned(
            bottom: 90,
            left: 16.0,
            right: 16.0,
            child: Column(
              children: [
                Center(
                  child: SmoothPageIndicator(
                    controller: controller.indicator,
                    count: 2,
                    effect: const SlideEffect(
                      activeDotColor: Color(0Xff17E6B7),
                      spacing: 8,
                      radius: 4,
                      dotWidth: 8,
                      dotHeight: 8,
                      dotColor: Color(0XffD9D9D9),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
