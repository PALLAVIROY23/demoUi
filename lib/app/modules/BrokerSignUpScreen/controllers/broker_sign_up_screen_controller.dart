import 'package:figma/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../login/views/login_view.dart';

class BrokerSignUpScreenController extends GetxController {
  //TODO: Implement BrokerSignUpScreenController

  final List<String> countries = ["India", "USA", "UK", "Canada", "Australia"];
  String? selectedCountry;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final repasswordController = TextEditingController();
  final phoneController = TextEditingController();


  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  validateAndCreateAccount() {
    if (nameController.text.isEmpty) {
      EasyLoading.showError( 'Name field is required',);
      return;
    }
    if (emailController.text.isEmpty ||
        !GetUtils.isEmail(emailController.text)) {
      EasyLoading.showError( 'Please enter a valid email',);
      return;
    }

    if (passwordController.text.isEmpty || passwordController.text.length < 6) {
      EasyLoading.showError( 'Password must be at least 6 characters long',
      );
      return;
    }

    if (phoneController.text.isEmpty || !RegExp(r'^[6-9]\d{9}$').hasMatch(phoneController.text)) {
      EasyLoading.showError( 'Please enter a valid phone number',);
      return;
    }

    if (selectedCountry == null) {
      EasyLoading.showError( 'Please select a country',
      );
      return;
    }
    EasyLoading.showSuccess( 'Account created successfully!',
    );

    Get.toNamed(Routes.LOGIN);
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
