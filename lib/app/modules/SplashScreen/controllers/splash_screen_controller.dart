import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../data/constants.dart';
import '../../../routes/app_pages.dart';

class SplashScreenController extends GetxController {
  GetStorage box = GetStorage();
  //TODO: Implement SplashController

  final count = 0.obs;
  @override
  void onInit() {
    Future.delayed(const Duration (seconds:  3), (){
    Get.offAllNamed(Routes.LOGIN);
    });
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}