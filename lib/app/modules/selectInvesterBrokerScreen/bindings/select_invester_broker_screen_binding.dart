import 'package:get/get.dart';

import '../controllers/select_invester_broker_screen_controller.dart';

class SelectInvesterBrokerScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectInvesterBrokerScreenController>(
      () => SelectInvesterBrokerScreenController(),
    );
  }
}
