import 'package:get/get.dart';

import '../controllers/persona_detail_screen_controller.dart';

class PersonaDetailScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PersonaDetailScreenController>(
      () => PersonaDetailScreenController(),
    );
  }
}
