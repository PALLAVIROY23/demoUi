import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CompanyDetailsController extends GetxController {
  //TODO: Implement CompanyDetailsController
  final List<String> countries = ["India", "USA", "UK", "Canada", "Australia"];
  String? selectedCountry;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

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
