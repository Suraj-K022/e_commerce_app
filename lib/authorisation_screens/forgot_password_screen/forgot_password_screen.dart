import 'package:e_commerce_app/authorisation_screens/otp_verification_screen/otp_verification_screen.dart';
import 'package:e_commerce_app/custom_widgets/Custom_input_text_field.dart';
import 'package:e_commerce_app/custom_widgets/custom_buttons.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Get.theme.scaffoldBackgroundColor,
    body: ListView(padding: EdgeInsets.symmetric(horizontal: 24,vertical: 24),
      physics: NeverScrollableScrollPhysics(),
      children: [
        SizedBox(height: 80,),
        Poppins('Enter Mobile Number',fontSize: 28,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor,),
        SizedBox(height: 40,),
        Poppins('Enter Email or Phone Number',fontWeight: FontWeight.w400,fontSize: 16,color: Get.theme.secondaryHeaderColor ,),
        SizedBox(height: 8,),
        CustomTextField(hintText: 'Enter Email or Phone Number'),
        SizedBox(height: 32,),
        CustomButton(text: 'Send OTP', onPressed: (){Get.to(OtpVerificationScreen());})
      ],
    ),);
  }
}
