import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studystream/app/modules/certificate/controllers/certificate_controller.dart';
import 'package:studystream/app/modules/comunity/controllers/comunity_controller.dart';
import 'package:studystream/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'app/routes/app_pages.dart';

void main() {
  Get.put(OnboardingController());
  Get.lazyPut(() => ComunityController());
  Get.lazyPut(() => CertificateController());

  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
