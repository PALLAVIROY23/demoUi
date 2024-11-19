import 'package:figma/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../custom_widgets/color_extension.dart';
import '../../../../custom_widgets/customTextField.dart';
import '../../login/views/login_view.dart';
import '../controllers/persona_detail_screen_controller.dart';

class PersonaDetailScreenView extends GetView<PersonaDetailScreenController> {
  const PersonaDetailScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor.fromHex("#050B44"),
      body: Stack(
        children: [

          Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Personal Details",
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          color: HexColor.fromHex("#FFFFFF"),
                        ),
                      ).marginOnly(left: 80),
                      SizedBox(height: 20.h),
                      // Name field
                      _buildInputField(
                        label: "Name",
                        hintText: "Enter full Name",
                        obscureText: false,
                        controller: controller.nameController,
                        suffixIcon: Image(image: AssetImage("assets/images/mail.png"))
                      ),
                      // Email field
                      _buildInputField(
                        label: "Email",
                        hintText: "Enter Email address",
                        obscureText: false,
                        controller: controller.emailController,
                        keyboardType: TextInputType.emailAddress,
                        suffixIcon: Image(image: AssetImage("assets/images/mail.png"))
                      ),
                      Text(
                        "Phone Number",
                        style: TextStyle(
                            color: HexColor.fromHex("#FFFFFF"),
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp),
                      ),
                      SizedBox(height: 5.h),
                      Container(
                        height: 55.h,
                        decoration: BoxDecoration(
                          color: HexColor.fromHex("#050B44"),
                          border: Border.all(color: HexColor.fromHex("#B27808")),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              suffixIcon: Image(image: AssetImage("assets/images/mail.png")),
                              hintText: "Enter phone number",
                              hintStyle: TextStyle(
                                color: HexColor.fromHex("#FFFFFF"),
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                              ),
                              border: InputBorder.none,
                            ),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(10),
                              FilteringTextInputFormatter.deny(RegExp(r'\s')),
                              FilteringTextInputFormatter.allow(
                                RegExp(r'^[+]*[(]{0,1}[6-9]{1,4}[)]{0,1}[-\s0-9]*$'),
                              ),
                            ],
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      // Password field
                      _buildInputField(
                        label: "Password",
                        hintText: "Enter Password",
                        obscureText: true,
                        suffixIcon: Image(image: AssetImage("assets/images/view.png")),
                        controller: controller.passwordController,
                      ),
                      // Confirm Password field
                      _buildInputField(
                        label: "Confirm Password",
                        hintText: "Re-enter Password",
                        obscureText: true,
                        controller: controller.confirmPasswordController,
                          suffixIcon: Image(image: AssetImage("assets/images/view.png"))
                      ),
                      // Phone Number field

                      // Dropdown for Country Selection
                      Text(
                        "Country",
                        style: TextStyle(
                          color: HexColor.fromHex("#FFFFFF"),
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                      ).marginSymmetric(horizontal: 10.w),
                      SizedBox(height: 10.h),
                      Container(
                        decoration: BoxDecoration(
                          color: HexColor.fromHex("#050B44"),
                          border: Border.all(color: HexColor.fromHex("#B27808")),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: DropdownButtonFormField<String>(
                          dropdownColor: HexColor.fromHex("#050B44"),
                          hint: Text(
                            "Select Country",
                            style: TextStyle(
                              color: HexColor.fromHex("#FFFFFF"),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          value: controller.selectedCountry,
                          items: controller.countries
                              .map((country) => DropdownMenuItem<String>(
                            value: country,
                            child: Text(
                              country,
                              style: TextStyle(
                                color: HexColor.fromHex("#FFFFFF"),
                                fontSize: 14.sp,
                              ),
                            ),
                          ))
                              .toList(),
                          onChanged: (value) {
                            controller.selectedCountry =
                                value; // Update selected country
                          },
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: HexColor.fromHex("#FFFFFF"),
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 30.h),
                      // Continue Button
                      myButton(
                        text: "Continue",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        textColor: HexColor.fromHex("#FFFFFF"),
                        width: double.infinity,
                        color: HexColor.fromHex("#FFC107"),
                        onTap: () {
                          Get.toNamed(Routes.COMPANY_DETAILS);
                        },
                      ).marginSymmetric(horizontal: 18),
                      SizedBox(height: 10.h),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account ? ",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: HexColor.fromHex("#FFFFFF"),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: HexColor.fromHex("#FFC107"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ).marginSymmetric(horizontal: 30.w,vertical: 200.h),
                ),
              ),
            ],
          ),
          Image(
            image: AssetImage("assets/images/cornerLogo.png"),
            height: 260.h,
            width: 230.w,
          ),
        ],
      ),
    );
  }


  Widget _buildInputField({
    required String label,
    required String hintText,
    required bool obscureText,
    required TextEditingController controller,
    TextInputType keyboardType = TextInputType.text,
    Widget? suffixIcon, // Optional suffix icon
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: HexColor.fromHex("#FFFFFF"),
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
          ),
        ),
        SizedBox(height: 5.h),
        CustomTextField(
          styleoftextfeild: TextStyle(color: Colors.white),
          HintText: hintText,
          Radius: 10,
          TextStyleForHintText: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: HexColor.fromHex("#FFFFFF"),
          ),
          width: double.infinity,
          keyboardType: keyboardType,
          obscureText: obscureText,
          isOutlineInputBorder: true,
          SurfixIcon: suffixIcon, // Add suffix icon here
          decoration: BoxDecoration(
            color: HexColor.fromHex("#050B44"),
            border: Border.all(color: HexColor.fromHex("#B27808")),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        SizedBox(height: 15.h),
      ],
    );
  }

  }

