import 'package:figma/app/modules/login/views/login_view.dart';
import 'package:figma/app/routes/app_pages.dart';
import 'package:figma/custom_widgets/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/select_invester_broker_screen_controller.dart';

class SelectInvesterBrokerScreenView
    extends GetView<SelectInvesterBrokerScreenController> {
  const SelectInvesterBrokerScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor.fromHex("#050B44"),
        body: Stack(
          children: [
            Image(
              image: AssetImage("assets/images/cornerLogo.png"),
              height: 280.h,
              width: 260.w,
            ).paddingOnly(top: 1),
            SizedBox(
              height: 50.h,
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Continue as",
                    style: TextStyle(
                        fontSize: 25.sp, color: HexColor.fromHex("#FFFFFF")),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "Start as an independent broker for personalized service or launch a brokerage firm to leverage team expertise. Both involve executing trades and guiding clients to financial success.",
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: HexColor.fromHex("#7D7D7D"),
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.INVESTOR_SIGN_UP_SCREEN);
                      },
                      child: Container(
                        height: 167.h,
                        width: 147.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          border: Border.all(width: 1,color: Colors.grey.shade700),
                          gradient: LinearGradient(
                            colors: [
                              HexColor.fromHex("#FFFFFF") .withOpacity(0.5),
                              HexColor.fromHex("#050B44") .withOpacity(0.7),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage("assets/images/Investors.png"),
                              height: 73.h,
                              width: 73.w,
                              color: Colors.white,
                            ),
                            SizedBox(height: 15.h),
                            Text(
                              "Investors",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15.sp,
                                color: HexColor.fromHex("#FFFFFF"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.SELECT_BROKER_SCREEN);
                      },
                      child: Container(
                        height: 167.h,
                        width: 147.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          border: Border.all(width: 1,color: Colors.grey.shade700),
                          gradient: LinearGradient(
                            colors: [
                              HexColor.fromHex("#FFFFFF")
                                  .withOpacity(0.5), // Start color with opacity
                              HexColor.fromHex("#050B44")
                                  .withOpacity(0.6), // End color with opacity
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage("assets/images/broker.png"),
                              height: 73.h,
                              width: 73.w,
                              color: Colors.white,
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              "Broker",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15.sp,
                                color: HexColor.fromHex("#FFFFFF"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ])
                ],
              ).marginSymmetric(horizontal: 25.w,vertical: 270),
            )
          ],
        ));
  }
}
