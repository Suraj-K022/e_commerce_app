import 'package:e_commerce_app/authorisation_screens/login_screen/login_screen.dart';
import 'package:e_commerce_app/authorisation_screens/otp_verification_screen/otp_verification_screen.dart';
import 'package:e_commerce_app/custom_widgets/Custom_input_text_field.dart';
import 'package:e_commerce_app/custom_widgets/custom_buttons.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../forgot_password_screen/forgot_password_screen.dart';

class MakePasswordScreen extends StatefulWidget {
  const MakePasswordScreen({super.key});

  @override
  State<MakePasswordScreen> createState() => _MakePasswordScreenState();
}

class _MakePasswordScreenState extends State<MakePasswordScreen> {
  int newPasswordVisible = 0; // Visibility state for "New Password"
  int confirmPasswordVisible = 0; // Visibility state for "Confirm Password"

  @override
  Widget build(BuildContext context) {
    return SafeArea(maintainBottomViewPadding: true,
      child: Scaffold(
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          physics: NeverScrollableScrollPhysics(),
          children: [
            SizedBox(height: 80),
            Poppins(
              'Forgot Password',
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: Get.theme.secondaryHeaderColor,
            ),
            SizedBox(height: 40),
            Poppins(
              'New Password',
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Get.theme.secondaryHeaderColor,
            ),
            SizedBox(height: 8),
            CustomTextField(
              hintText: 'New Password',
              obscureText: newPasswordVisible == 0,
              suffixIcon: newPasswordVisible == 0
                  ? Icons.visibility_off_sharp
                  : Icons.visibility_sharp,
              onSuffixTap: () {
                setState(() {
                  newPasswordVisible = newPasswordVisible == 0 ? 1 : 0;
                });
              },
            ),
            SizedBox(height: 20),
            Poppins(
              'Confirm Password',
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Get.theme.secondaryHeaderColor,
            ),
            SizedBox(height: 8),
            CustomTextField(
              hintText: 'Confirm Password',
              obscureText: confirmPasswordVisible == 0,
              suffixIcon: confirmPasswordVisible == 0
                  ? Icons.visibility_off_sharp
                  : Icons.visibility_sharp,
              onSuffixTap: () {
                setState(() {
                  confirmPasswordVisible = confirmPasswordVisible == 0 ? 1 : 0;
                });
              },
            ),
            SizedBox(height: 6),
            InkWell(
              onTap: () {
                Get.to(ForgotPasswordScreen());
              },
              child: Poppins(
                'Use Atleast 8 Character',
                color: Colors.grey[500],
                fontSize: 12,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(height: 32),
            CustomButton(
              text: 'Submit',
              onPressed: () {
                Get.to(LoginScreen(type: 'Retailer',));
              },
            ),
          ],
        ),
      ),
    );
  }
}
