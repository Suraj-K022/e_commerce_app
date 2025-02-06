import 'package:e_commerce_app/custom_widgets/Custom_input_text_field.dart';
import 'package:e_commerce_app/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../custom_widgets/custom_buttons.dart';
import '../setting_screen.dart';

class ChangePasswordScreen extends StatefulWidget {
  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  int visibleicon1 = 0;
  int visibleicon2 = 0;
  int visibleicon3 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      appBar: CustomAppBar(title: 'Change Password'),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: CustomButton(
          text: 'Save',
          onPressed: () {
            Get.to(SettingScreen());
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        children: [
          CustomTextField(
            hintText: 'Old Password',
            obscureText: visibleicon1 == 0, // Controls text visibility
            suffixIcon: visibleicon1 == 0
                ? Icons.visibility_sharp
                : Icons.visibility_off_sharp,
            onSuffixTap: () {
              setState(() {
                visibleicon1 = visibleicon1 == 0 ? 1 : 0;
              });
            },
          ),
          SizedBox(height: 15),
          CustomTextField(
            hintText: 'New Password',
            obscureText: visibleicon2 == 0, // Controls text visibility
            suffixIcon: visibleicon2 == 0
                ? Icons.visibility_sharp
                : Icons.visibility_off_sharp,
            onSuffixTap: () {
              setState(() {
                visibleicon2 = visibleicon2 == 0 ? 1 : 0;
              });
            },
          ),
          SizedBox(height: 15),
          CustomTextField(
            hintText: 'Confirm Password',
            obscureText: visibleicon3 == 0, // Controls text visibility
            suffixIcon: visibleicon3 == 0
                ? Icons.visibility_sharp
                : Icons.visibility_off_sharp,
            onSuffixTap: () {
              setState(() {
                visibleicon3 = visibleicon3 == 0 ? 1 : 0;
              });
            },
          ),
        ],
      ),
    );
  }
}
