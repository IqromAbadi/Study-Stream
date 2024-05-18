import 'package:get/get.dart';

import '../controllers/splashscreens_controller.dart';

class SplashscreensBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashscreensController>(
      () => SplashscreensController(),
    );
  }
}
