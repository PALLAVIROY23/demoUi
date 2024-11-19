import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../custom_widgets/color_extension.dart';
import '../../../../custom_widgets/customTextField.dart';
import '../../../routes/app_pages.dart';
import '../../login/views/login_view.dart';
import '../controllers/company_details_controller.dart';

class CompanyDetailsView extends GetView<CompanyDetailsController> {
  const CompanyDetailsView({super.key});
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
                        "Company Details",
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          color: HexColor.fromHex("#FFFFFF"),
                        ),
                      ).marginOnly(left: 80),
                      SizedBox(height: 20.h),
                      // Name field
                      _buildInputField(
                          label: "Company Name",
                          hintText: "Enter company/Business name",
                          obscureText: false,
                          controller: controller.nameController,
                          suffixIcon: Image(
                              image: AssetImage("assets/images/mail.png"))),
                      // Email field
                      _buildInputField(
                          label: "Legal Name",
                          hintText: "Enter legal name",
                          obscureText: false,
                          controller: controller.emailController,
                          keyboardType: TextInputType.emailAddress,
                          suffixIcon: Image(
                              image: AssetImage("assets/images/mail.png"))),
                      Text(
                        "Ownership",
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
                          border:
                          Border.all(color: HexColor.fromHex("#B27808")),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: DropdownButtonFormField<String>(
                          dropdownColor: HexColor.fromHex("#050B44"),
                          hint: Text(
                            "Select Ownership",
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
                      SizedBox(height: 15.h),
                      // Password field
                      _buildInputField(
                        label: "Company Address",
                        hintText: "Enter your company address",
                        obscureText: true,
                        suffixIcon:
                            Image(image: AssetImage("assets/images/view.png")),
                        controller: controller.passwordController,
                      ),
                      // Confirm Password field
                      _buildInputField(
                          label: "Director’s name",
                          hintText: "Enter director’s name",
                          obscureText: true,
                          controller: controller.confirmPasswordController,
                          suffixIcon: Image(
                              image: AssetImage("assets/images/view.png"))),
                      // Dropdown for Country Selection
                      Text(
                        "Portfolio Value",
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
                          border:
                              Border.all(color: HexColor.fromHex("#B27808")),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: DropdownButtonFormField<String>(
                          dropdownColor: HexColor.fromHex("#050B44"),
                          hint: Text(
                            "Select portfolio value",
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
                        onTap: () {Get.toNamed(Routes.DOCUMENT_UPLOAD_SCREEN);},
                      ).marginSymmetric(horizontal: 18),
                      SizedBox(height: 10.h),
                      // Footer (Sign In)
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
                  ).marginSymmetric(horizontal: 30.w, vertical: 200.h),
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

  // Helper function to build input fields
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
