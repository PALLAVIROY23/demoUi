import 'package:get/get.dart';

import '../controllers/select_broker_screen_controller.dart';

class SelectBrokerScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectBrokerScreenController>(
      () => SelectBrokerScreenController(),
    );
  }
}
