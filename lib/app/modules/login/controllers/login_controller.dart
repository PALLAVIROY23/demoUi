import 'package:figma/app/routes/app_pages.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  // Observable variables for email and password
  var email = ''.obs;
  var password = ''.obs;

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


  bool isValidEmail(String email) {
    final emailRegex = RegExp(
        r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
    return emailRegex.hasMatch(email);
  }


  void login() {

    if (email.value.isEmpty) {
      EasyLoading.showError('Enter your Email');
      return;
    }


    if (!isValidEmail(email.value)) {
      EasyLoading.showError('Enter a valid Email');
      return;
    }


    if (password.value.isEmpty) {
      EasyLoading.showError('Enter your Password');
      return;
    }


    EasyLoading.showSuccess('Login Successful');

  }
}
