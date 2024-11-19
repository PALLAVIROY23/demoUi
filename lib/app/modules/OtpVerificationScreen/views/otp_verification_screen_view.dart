import 'package:figma/app/routes/app_pages.dart';
import 'package:figma/custom_widgets/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../login/views/login_view.dart';
import '../controllers/otp_verification_screen_controller.dart';

class OtpVerificationScreenView
    extends GetView<OtpVerificationScreenController> {
  const OtpVerificationScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor.fromHex("#050B44"),
      body: Stack(
        children: [
          Image(
            image: AssetImage("assets/images/cornerLogo.png"),
            height: 260.h,
            width: 230.w,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "OTP verification",
                  style: TextStyle(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w700,
                    color: HexColor.fromHex("#FFFFFF"),
                  ),
                ).marginOnly(left: 20),
                SizedBox(height: 10.h),
                Text(
                  "Enter the 6-digit code sent to your email to\nverify your account.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: HexColor.fromHex("#FFFFFF"),
                  ),
                ),
                SizedBox(height: 30.h),
                PinCodeTextField(
                  appContext: context,
                  length: 6,
                  controller: controller.otpController,
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(15),
                    fieldHeight: 50.h,
                    fieldWidth: 45.w,
                    inactiveFillColor: Colors.grey[200],
                    activeFillColor: Colors.white,
                    activeColor: Color(0xFFFFC107),
                    selectedColor: Color(0xFFFFC107),
                    inactiveColor:  Color(0xFFFFC107),
                  ),
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textStyle: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white,
                  ),
                  cursorColor: Colors.white,
                  animationType: AnimationType.fade,
                  enableActiveFill: false,
                  onChanged: (value) {

                  },
                  validator: (value) {
                    // Validate PIN code
                    if (value == null || value.isEmpty) {
                      return 'Please enter OTP';
                    }
                    return null;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn’t receive code?  ",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: HexColor.fromHex("#FFFFFF"),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Resend",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: HexColor.fromHex("#FFC107"),
                        ),
                      ),
                    ),
                  ],
                ),
            
                SizedBox(height: 90.h),
                myButton(
                  text: "Verify",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  textColor: HexColor.fromHex("#FFFFFF"),
                  width: double.infinity,
                  color: HexColor.fromHex("#FFC107"),
                  onTap: () {
                 controller.otp();
                  },
                ).marginSymmetric(horizontal: 18),
                SizedBox(height: 10.h),
              ],
            ).marginSymmetric(vertical: 215.h, horizontal: 30.w),
          ),
        ],
      ),
    );
  }
}
