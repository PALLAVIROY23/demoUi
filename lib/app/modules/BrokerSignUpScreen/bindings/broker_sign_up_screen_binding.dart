import 'package:get/get.dart';

import '../controllers/broker_sign_up_screen_controller.dart';

class BrokerSignUpScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BrokerSignUpScreenController>(
      () => BrokerSignUpScreenController(),
    );
  }
}
