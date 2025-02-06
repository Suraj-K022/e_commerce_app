import 'package:e_commerce_app/custom_widgets/Custom_input_text_field.dart';
import 'package:e_commerce_app/splashScreen/entityScreen/entity_screen.dart';
import 'package:e_commerce_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 // Replace with the actual screen to navigate to

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Get.off(() => EntityScreen()); // Navigate after 2 seconds
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      body: Center(
        child: Container(
          height: 153,
          width: 180,
          child: Image.asset(images.Logo, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
