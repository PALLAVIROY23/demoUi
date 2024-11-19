import 'package:get/get.dart';

class DocumentUploadScreenController extends GetxController {
  //TODO: Implement DocumentUploadScreenController
  final List<String> countries = ["India", "USA", "UK", "Canada", "Australia"];
  String? selectedCountry;
  final count = 0.obs;
  @override
  void onInit() {
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
