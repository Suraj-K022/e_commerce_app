import 'package:e_commerce_app/authorisation_screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:e_commerce_app/authorisation_screens/login_screen/login_screen.dart';
import 'package:e_commerce_app/authorisation_screens/otp_verification_screen/otp_verification_screen.dart';
import 'package:e_commerce_app/bottom_dash_board/bottom_dash_board.dart';
import 'package:e_commerce_app/custom_widgets/Custom_input_text_field.dart';
import 'package:e_commerce_app/custom_widgets/custom_buttons.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:e_commerce_app/custom_widgets/gender_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: [
            SizedBox(height: 140),
            SizedBox(
              height: 104,
              width: 123,
              child: Image.asset('assets/icons/logo.png'),
            ),
            SizedBox(height: 40),
            Poppins(
              'SignUp',
              color: Colors.grey[800],
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 20),
            buildTextField('Name', 'Enter Name'),
            SizedBox(height: 20),
            buildTextField('Email Id', 'Enter Email'),
            SizedBox(height: 20),
            buildTextField('Phone Number', 'Phone Number'),
            SizedBox(height: 20),
            Poppins(
              'Gender',
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Colors.black,
            ),
            SizedBox(height: 8),
            GenderDropdown(),
            SizedBox(height: 20),
            buildPasswordField('Password', 'Password', isPasswordVisible, () {
              setState(() {
                isPasswordVisible = !isPasswordVisible;
              });
            }),
            SizedBox(height: 20),
            buildPasswordField('Confirm Password', 'Password', isConfirmPasswordVisible, () {
              setState(() {
                isConfirmPasswordVisible = !isConfirmPasswordVisible;
              });
            }),
            SizedBox(height: 35),
            CustomButton(
              text: 'Sign Up',
              onPressed: () {
                Get.to(BottomDashBoard());
              },
            ),
            SizedBox(height: 30),
            buildDivider(),
            SizedBox(height: 30),
            buildSocialMediaButtons(),
            SizedBox(height: 70),
            buildSignInRow(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Poppins(
          label,
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: Colors.black,
        ),
        SizedBox(height: 8),
        CustomTextField(hintText: hint),
      ],
    );
  }

  Widget buildPasswordField(String label, String hint, bool isVisible, VoidCallback onSuffixTap) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Poppins(
          label,
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: Colors.black,
        ),
        SizedBox(height: 8),
        CustomTextField(
          hintText: hint,
          obscureText: !isVisible,
          suffixIcon: isVisible ? Icons.visibility_sharp : Icons.visibility_off_sharp,
          onSuffixTap: onSuffixTap,
        ),
      ],
    );
  }

  Widget buildDivider() {
    return Row(
      children: [
        Expanded(
          child: Divider(height: 10, color: Colors.grey, thickness: 1, endIndent: 10),
        ),
        Poppins('or', color: Colors.grey),
        Expanded(
          child: Divider(height: 10, color: Colors.grey, thickness: 1, indent: 10),
        ),
      ],
    );
  }

  Widget buildSocialMediaButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20,
      children: [
        buildSocialButton('assets/icons/Gmail.png'),
        buildSocialButton('assets/icons/Facebook.png'),
        buildSocialButton('assets/icons/Apple.png'),
      ],
    );
  }

  Widget buildSocialButton(String iconPath) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Image.asset(iconPath, width: 24, height: 24),
      ),
    );
  }

  Widget buildSignInRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Poppins(
          'Don’t have an account?',
          color: Colors.grey[800],
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        InkWell(
          onTap: () {
            Get.to(LoginScreen(type: 'Retailer',));
          },
          child: Poppins(
            ' Sign In',
            color: Get.theme.primaryColor,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
