import 'package:get/get.dart';

import '../controllers/document_upload_screen_controller.dart';

class DocumentUploadScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DocumentUploadScreenController>(
      () => DocumentUploadScreenController(),
    );
  }
}
