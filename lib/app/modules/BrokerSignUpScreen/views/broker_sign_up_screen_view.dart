import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../custom_widgets/color_extension.dart';
import '../../../../custom_widgets/customTextField.dart';
import '../../login/views/login_view.dart';
import '../controllers/broker_sign_up_screen_controller.dart';

class BrokerSignUpScreenView extends GetView<BrokerSignUpScreenController> {
  const BrokerSignUpScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor.fromHex("#050B44"),
        body: Stack(
            children: [
              // Scrollable content
              SingleChildScrollView(
                padding: EdgeInsets.only(top: 240.h), // Adjust for fixed header
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: HexColor.fromHex("#FFFFFF")),
                      ).marginSymmetric(horizontal: 10.w),
                      SizedBox(height: 5.h),
                      CustomTextField(
                        styleoftextfeild: TextStyle(color: Colors.white),
                        HintText: "Enter full Name",
                        controller: controller.nameController,
                        TextStyleForHintText: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: HexColor.fromHex("#FFFFFF")),
                        Radius: 10,
                        width: double.infinity,
                        keyboardType: TextInputType.text,
                        obscureText: false,
                        isOutlineInputBorder: true,
                        decoration: BoxDecoration(
                          color: HexColor.fromHex("#050B44"),
                          border: Border.all(color: HexColor.fromHex("#B27808")),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        SurfixIcon: Image(
                          image: AssetImage("assets/images/mail.png"),
                          height: 5.h,
                          width: 5.w,
                          color: HexColor.fromHex("#FFFFFF"),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "Email",
                        style: TextStyle(
                            color: HexColor.fromHex("#FFFFFF"),
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp),
                      ).marginSymmetric(horizontal: 10.w),
                      SizedBox(height: 5.h),
                      CustomTextField(
                        styleoftextfeild: TextStyle(color: Colors.white),
                        HintText: "Enter Email address",
                        controller: controller.emailController,
                        TextStyleForHintText: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: HexColor.fromHex("#FFFFFF")),
                        Radius: 10,
                        width: double.infinity,
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        isOutlineInputBorder: true,
                        decoration: BoxDecoration(
                          color: HexColor.fromHex("#050B44"),
                          border: Border.all(color: HexColor.fromHex("#B27808")),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        SurfixIcon: Image(
                          image: AssetImage("assets/images/mail.png"),
                          height: 5.h,
                          width: 5.w,
                          color: HexColor.fromHex("#FFFFFF"),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "Password",
                        style: TextStyle(
                            color: HexColor.fromHex("#FFFFFF"),
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp),
                      ).marginSymmetric(horizontal: 10.w),
                      SizedBox(height: 5.h),
                      CustomTextField(
                        styleoftextfeild: TextStyle(color: Colors.white),
                        HintText: "Enter Password",
                        controller: controller.passwordController,
                        TextStyleForHintText: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: HexColor.fromHex("#FFFFFF")),
                        Radius: 10,
                        width: double.infinity,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        isOutlineInputBorder: true,
                        decoration: BoxDecoration(
                          color: HexColor.fromHex("#050B44"),
                          border: Border.all(color: HexColor.fromHex("#B27808")),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        SurfixIcon: Image(
                          image: AssetImage("assets/images/view.png"),
                          height: 5.h,
                          width: 5.w,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "Confirm Password",
                        style: TextStyle(
                          color: HexColor.fromHex("#FFFFFF"),
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                      ).marginSymmetric(horizontal: 10.w),
                      SizedBox(height: 5.h),
                      // Password Input Field
                      CustomTextField(
                        styleoftextfeild: TextStyle(color: Colors.white),
                        HintText: "Re-enter Password",
                        controller: controller.repasswordController,
                        Radius: 10,
                        TextStyleForHintText: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: HexColor.fromHex("#FFFFFF")),
                        width: double.infinity,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        isOutlineInputBorder: true,
                        SurfixIcon: const Image(
                            image: AssetImage("assets/images/view.png")),
                        decoration: BoxDecoration(
                          color: HexColor.fromHex("#050B44"),
                          border: Border.all(color: HexColor.fromHex("#B27808")),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      SizedBox(height: 15.h,),
                      Text(
                        "Phone Number",
                        style: TextStyle(
                            color: HexColor.fromHex("#FFFFFF"),
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp),
                      ).marginSymmetric(horizontal: 10.w),
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
                            controller: controller.phoneController,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: "Enter phone number",
                              hintStyle: TextStyle(
                                  color: HexColor.fromHex("#FFFFFF"),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp),
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
                      Text(
                        "Country",
                        style: TextStyle(
                          color: HexColor.fromHex("#FFFFFF"),
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                      ).marginSymmetric(horizontal: 10.w),
                      SizedBox(height: 10.h),
                      // Dropdown for Country Selection
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
                      SizedBox(
                        height: 15.h,
                      ),
                      Text("Your Experience",
                          style: TextStyle(
                            color: HexColor.fromHex("#FFFFFF"),
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                          )),
                      SizedBox(height: 5.h,),
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
                            "Select your Experience",
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
                      SizedBox(height: 15.h,),
                      Text("Portfolio Amount",
                          style: TextStyle(
                            color: HexColor.fromHex("#FFFFFF"),
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                          )),
                      SizedBox(height: 5.h,),
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
                            "Select your Experience",
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
                      SizedBox(
                        height: 15.h,
                      ),

                      SizedBox(height: 30.h,),
                      myButton(
                        text: "Create an account",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        textColor: HexColor.fromHex("#FFFFFF"),
                        width: double.infinity,
                        color: HexColor.fromHex("#FFC107"),
                        onTap: () {
                          controller.validateAndCreateAccount();
                        },
                      ).marginSymmetric(horizontal: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                      SizedBox(height: 20.h,)

                    ]),



              ).marginSymmetric(horizontal: 25.w),
              Column(
                children: [
                  Row(
                    children: [
                      Image(
                        image: AssetImage("assets/images/cornerLogo.png"),
                        height: 200.h,
                        width: 230.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Hello",
                            style: TextStyle(
                                fontSize: 40.sp,
                                fontWeight: FontWeight.w700,
                                color: HexColor.fromHex("#FFFFFF")),
                          ),
                          Text(
                            "Broker",
                            style: TextStyle(
                                fontSize: 40.sp,
                                fontWeight: FontWeight.w700,
                                color: HexColor.fromHex("#FFFFFF")),
                          ),
                        ],
                      ).marginOnly(right: 10),
                    ],
                  ),
                ],
              ),

            ]
        )

    );
  }
}
