import 'package:get/get.dart';
import 'package:flutter/material.dart';

class OnboardingController extends GetxController {
  final PageController indicator = PageController();
  final RxInt page = 0.obs;

  @override
  void onClose() {
    indicator.dispose();
    super.onClose();
  }
}
