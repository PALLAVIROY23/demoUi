import 'package:figma/app/modules/login/views/login_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class InvestorSignUpScreenController extends GetxController {
  //TODO: Implement InvestorSignUpScreenController
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  final brokerReferIdController = TextEditingController();

  final List<String> countries = ["India", "USA", "UK", "Canada", "Australia"];
  String? selectedCountry;
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

    // If all validations pass
   EasyLoading.showSuccess( 'Account created successfully!',
        );

    // Navigate to login screen
    Get.to(() => LoginView());
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
