
import 'package:e_commerce_app/authorisation_screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:e_commerce_app/authorisation_screens/make_password_screen/make_password_screen.dart';
import 'package:e_commerce_app/custom_widgets/custom_buttons.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../dimensions/dimensions.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreen();
}

class _OtpVerificationScreen extends State<OtpVerificationScreen> {
  int visible=0;

  @override
  Widget build(BuildContext context) {

    return  Scaffold(backgroundColor: Get.theme.scaffoldBackgroundColor,
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 24),physics: NeverScrollableScrollPhysics(),
        children: [
          SizedBox(height: 100,),
          Container(height: 104,width: 123,child: Image.asset('assets/icons/logo.png'),),
          SizedBox(height: 20,),
          Poppins('Verification',fontSize: 28,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor,textAlign: TextAlign.center,),
          SizedBox(height: 10,),
          Poppins('Enter the code send to the number',fontSize: 16,fontWeight: FontWeight.w400,color:Colors.grey,textAlign: TextAlign.center,),
          SizedBox(height: 20,),
          ///otp widget//

          OtpTextField(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            styles: [
              TextStyle(color: Get.theme.secondaryHeaderColor,fontSize: 26,fontWeight: FontWeight.w500,),
              TextStyle(color: Get.theme.secondaryHeaderColor,fontSize: 26,fontWeight: FontWeight.w500,),
              TextStyle(color: Get.theme.secondaryHeaderColor,fontSize: 26,fontWeight: FontWeight.w500,),
              TextStyle(color: Get.theme.secondaryHeaderColor,fontSize: 26,fontWeight: FontWeight.w500,),
            ],
            fieldWidth: 70,
            numberOfFields: 4,
            borderColor: Colors.grey,
            enabledBorderColor: Colors.grey.shade400,
            focusedBorderColor: Get.theme.primaryColor,
            borderWidth: 1,

            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },

          ),
SizedBox(height: 30,),





          ///otpbutton//
          CustomButton(text: 'Verify OTP', onPressed: (){Get.to(MakePasswordScreen());}),
          SizedBox(height: 8,),
          InkWell(onTap: (){Get.to(ForgotPasswordScreen());},
              child: Poppins('Resend OTP',textAlign: TextAlign.right,color: Get.theme.primaryColor,fontSize: 16,fontWeight: FontWeight.w500,))
        ],

      ),);
  }
}
