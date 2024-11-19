import 'package:dotted_border/dotted_border.dart';
import 'package:figma/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../custom_widgets/color_extension.dart';
import '../../login/views/login_view.dart';
import '../controllers/document_upload_screen_controller.dart';
class DocumentUploadScreenView extends GetView<DocumentUploadScreenController> {
  const DocumentUploadScreenView({super.key});
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Document Upload",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: HexColor.fromHex("#FFFFFF"),
                  ),
                ).marginOnly(left: 80),
                SizedBox(height: 20.h),
                Text(
                  "Address Proof",
                  style: TextStyle(
                    color: HexColor.fromHex("#FFFFFF"),
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                  ),
                ).marginSymmetric(horizontal: 10.w),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Container(
                      width: 200.w,
                      height: 49,
                      decoration: BoxDecoration(
                        color: HexColor.fromHex("#050B44"),
                        border: Border.all(color: HexColor.fromHex("#B27808")),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: DropdownButtonFormField<String>(
                        dropdownColor: HexColor.fromHex("#050B44"),
                        hint: Text(
                          "Select Document",
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
                          controller.selectedCountry = value;
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
                    SizedBox(width: 10.w),
                    Image(image: AssetImage("assets/images/container.png"), height: 49.h, width: 121.w),
                  ],
                ),
                SizedBox(height: 25.h),
                Text(
                  "Certificate of Incorporation",
                  style: TextStyle(
                    color: HexColor.fromHex("#FFFFFF"),
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                  ),
                ).marginSymmetric(horizontal: 10.w),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Container(
                      width: 200.w,
                      height: 49,
                      decoration: BoxDecoration(
                        color: HexColor.fromHex("#050B44"),
                        border: Border.all(color: HexColor.fromHex("#B27808")),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(
                        "Upload COI",
                        style: TextStyle(
                          color: HexColor.fromHex("#FFFFFF"),
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ).marginSymmetric(vertical: 15.h),
                    ),
                    SizedBox(width: 10.w),
                    Image(image: AssetImage("assets/images/container.png"), height: 49.h, width: 121.w),
                  ],
                ),
          SizedBox(height: 45.h),
          DottedBorder(
            borderType: BorderType.RRect,
            radius: Radius.circular(20),
            dashPattern: [6, 3],
            color: HexColor.fromHex("#FFFFFF"),
            strokeWidth: 2,
            child: Container(
              width: 342.w,
              height: 212.h,
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: HexColor.fromHex("#050B44"),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Document Upload Guidelines",
                    style: TextStyle(
                      color: HexColor.fromHex("#FFFFFF"),
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "• Avoid glare or shadows",
                    style: TextStyle(
                      color: HexColor.fromHex("#FFFFFF"),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  Text(
                    "• Capture the entire document",
                    style: TextStyle(
                      color: HexColor.fromHex("#FFFFFF"),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  Text(
                    "• Ensure text is readable",
                    style: TextStyle(
                      color: HexColor.fromHex("#FFFFFF"),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  Text(
                    "• Use a dark, non-reflective surface",
                    style: TextStyle(
                      color: HexColor.fromHex("#FFFFFF"),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  Text(
                    "• Hold your phone parallel to the document",
                    style: TextStyle(
                      color: HexColor.fromHex("#FFFFFF"),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  Text(
                    "• Tap to focus before capturing",
                    style: TextStyle(
                      color: HexColor.fromHex("#FFFFFF"),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  Text(
                    "• Max file size is 2 MB",
                    style: TextStyle(
                      color: HexColor.fromHex("#FFFFFF"),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  Text(
                    "• Only JPEG, JPG, PNG are accepted",
                    style: TextStyle(
                      color: HexColor.fromHex("#FFFFFF"),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ],
              ),
            ),
          ),
                SizedBox(height: 50.h,),
                myButton(
                  text: "Continue",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  textColor: HexColor.fromHex("#FFFFFF"),
                  width: double.infinity,
                  color: HexColor.fromHex("#FFC107"),
                  onTap: () {Get.toNamed(Routes.OTP_VERIFICATION_SCREEN);},
                ).marginSymmetric(horizontal: 18),
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
            ).marginSymmetric(vertical: 200.h, horizontal: 30.w),
          ),
        ],
      ),
    );
  }
}
