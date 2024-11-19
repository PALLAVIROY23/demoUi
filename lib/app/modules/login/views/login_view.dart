import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';
import 'package:figma/custom_widgets/color_extension.dart';
import 'package:figma/custom_widgets/customTextField.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor.fromHex("#050B44"),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 1.h),
              child: Image(
                image: AssetImage("assets/images/cornerLogo.png"),
                height: 280.h,
                width: 260.w,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: HexColor.fromHex("#FFFFFF"),
                    fontWeight: FontWeight.w700,
                    fontSize: 24.sp,
                  ),
                ).marginSymmetric(horizontal: 50.w),
                SizedBox(height: 50.h),
                Text(
                  "Email",
                  style: TextStyle(
                    color: HexColor.fromHex("#FFFFFF"),
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                  ),
                ).marginSymmetric(horizontal: 10.w),
                SizedBox(height: 10.h),
                // Email Input Field
                CustomTextField(
                  styleoftextfeild: TextStyle(color: Colors.white),
                  HintText: "Enter your email",
                  TextStyleForHintText: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: HexColor.fromHex("#FFFFFF")),
                  Radius: 15,
                  width: double.infinity,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  isOutlineInputBorder: true,
                  decoration: BoxDecoration(
                    color: HexColor.fromHex("#050B44"),
                    border: Border.all(color: HexColor.fromHex("#B27808")),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  SurfixIcon: Image(
                    image: AssetImage("assets/images/mail.png"),
                    height: 5.h,
                    width: 5.w,
                    color: HexColor.fromHex("#FFFFFF"),
                  ),
                  onchangeFuntion: (value) {
                    // Update email in the controller
                    controller.email.value = value;
                  },
                ),
                SizedBox(height: 20.h),
                Text(
                  "Password",
                  style: TextStyle(
                    color: HexColor.fromHex("#FFFFFF"),
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                  ),
                ).marginSymmetric(horizontal: 10.w),
                SizedBox(height: 15.h),
                // Password Input Field
                CustomTextField(
                  styleoftextfeild: TextStyle(color: Colors.white),

                  HintText: "Password",
                  Radius: 10,
                  TextStyleForHintText: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: HexColor.fromHex("#FFFFFF")),
                  width: double.infinity,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  isOutlineInputBorder: true,
                  SurfixIcon: const Image(image: AssetImage("assets/images/view.png")),
                  decoration: BoxDecoration(
                    color: HexColor.fromHex("#050B44"),
                    border: Border.all(color: HexColor.fromHex("#B27808")),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onchangeFuntion: (value) {
                    // Update password in the controller
                    controller.password.value = value;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          color: HexColor.fromHex("#FFFFFF"),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: HexColor.fromHex("#B27808"),
                        thickness: 1.0,
                        endIndent: 10.0,

                      ),
                    ),
                    Text(
                      "OR",
                      style: TextStyle(
                        color: HexColor.fromHex("#B27808"),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: HexColor.fromHex("#B27808"),
                        thickness: 1.0,
                        indent: 10.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                Center(
                  child: Container(
                    height: 50.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: HexColor.fromHex("#222457")),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image(
                      image: AssetImage("assets/images/google.png"),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                // Login Button
                myButton(
                  text: "Log in",
                  textColor: HexColor.fromHex("#FFFFFF"),
                  width: double.infinity,
                  color: HexColor.fromHex("#FFC107"),
                  onTap: () {
                    // Call login function from controller
                    controller.login();
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: HexColor.fromHex("#FFFFFF"),
                      ),
                    ),
                    TextButton(
                      onPressed: () { Get.offNamed(Routes.SELECT_INVESTER_BROKER_SCREEN);},
                      child: Text(
                        "Sign up now",
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                          color: HexColor.fromHex("#FFC107"),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ).paddingSymmetric(horizontal: 50.h),
          ],
        ),
      ),
    );
  }
}


Widget myButton({
  String? text,
  void Function()? onTap,
  Color? color,
  Color? textColor,
  double? height,
  double? width,
  double? fontSize,
  FontWeight? fontWeight,
  BoxDecoration? decoration, // Allows custom decorations
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: height ?? Get.height * 0.05,
      width: width ?? Get.width * 0.4,
      decoration: decoration ??
          BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
          ),
      child: Center(
        child: text == null
            ? const SizedBox()
            : Text(
          text,
          style: TextStyle(
            fontSize: fontSize ?? 16,
            fontWeight: fontWeight ?? FontWeight.w500,
            color: textColor ?? Colors.black,
          ),
        ),
      ),
    ),
  );
}

