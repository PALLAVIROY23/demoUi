import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class OtpVerificationScreenController extends GetxController {
  //TODO: Implement OtpVerificationScreenController
  TextEditingController otpController= TextEditingController();

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
  otp(){
    if (otpController.text.length < 6) {
      EasyLoading.showError('Please fill all the OTP boxes');
    } else {
      EasyLoading.showSuccess('OTP Verified Successfully');
      Get.toNamed(Routes.COMPLETE_KYC_SCREEN);
    }
  }


}
