import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studystream/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'app/routes/app_pages.dart';

void main() {
  Get.put(OnboardingController());

  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
