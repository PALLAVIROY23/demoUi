import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    controller.count;
    return Scaffold(
      body:  Center(
        child: Image(image: AssetImage("assets/images/logo.png"),height: 250.h,width: 280.w,),
        ),

    );
  }
}
