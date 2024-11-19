import 'package:get/get.dart';

import '../controllers/investor_sign_up_screen_controller.dart';

class InvestorSignUpScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InvestorSignUpScreenController>(
      () => InvestorSignUpScreenController(),
    );
  }
}
