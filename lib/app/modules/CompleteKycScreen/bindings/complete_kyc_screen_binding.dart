import 'package:get/get.dart';

import '../controllers/complete_kyc_screen_controller.dart';

class CompleteKycScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CompleteKycScreenController>(
      () => CompleteKycScreenController(),
    );
  }
}
