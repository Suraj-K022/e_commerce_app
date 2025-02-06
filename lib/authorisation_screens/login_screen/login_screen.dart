import 'package:e_commerce_app/Distributor/distributor_dashboard/distributor_dashboard.dart';
import 'package:e_commerce_app/authorisation_screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:e_commerce_app/authorisation_screens/signup_screen/signup_screen.dart';
import 'package:e_commerce_app/bottom_dash_board/bottom_dash_board.dart';
import 'package:e_commerce_app/custom_widgets/Custom_input_text_field.dart';
import 'package:e_commerce_app/custom_widgets/custom_buttons.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:e_commerce_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Salesman/salesman_dashboard/salesman_dashboard.dart';

class LoginScreen extends StatefulWidget {
  final String? type;

  const LoginScreen({super.key,required this.type});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int visible = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(maintainBottomViewPadding: true,
      child: Scaffold(
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
      
          children: [
            SizedBox(
              height: 140,
            ),
            SizedBox(
              height: 104,
              width: 123,
              child: Image.asset(images.Logo),
            ),
            SizedBox(
              height: 40,
            ),
            widget.type == "Distributor"
                ? Poppins(
                    'Login as a Distributor',
                    color: Colors.grey[800],
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  )
                : widget.type == "Salesman"
                    ? Poppins(
                        'Login as a Salesman',
                        color: Colors.grey[800],
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      )
                    : Poppins(
                        'Login',
                        color: Colors.grey[800],
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
            SizedBox(
              height: 20,
            ),
            Poppins(
              'Email ID or Phone Number',
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Colors.black,
            ),
            SizedBox(
              height: 8,
            ),
            CustomTextField(hintText: 'Email Id or Phone number'),
            SizedBox(
              height: 20,
            ),
            Poppins(
              'Password',
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Colors.black,
            ),
            SizedBox(
              height: 8,
            ),
            CustomTextField(
              hintText: 'Password',
              obscureText: true,
              suffixIcon: visible == 0
                  ? Icons.visibility_off_sharp
                  : Icons.visibility_sharp,
              onSuffixTap: () {
                setState(() {
                  visible = 1;
                });
              },
            ),
            SizedBox(
              height: 6,
            ),
            InkWell(
                onTap: () {
                  Get.to(ForgotPasswordScreen());
                },
                child: Poppins(
                  'Forgot Password?',
                  color: Colors.grey[700],
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.right,
                )),
            SizedBox(
              height: 35,
            ),
            CustomButton(
              text: 'Login',
              onPressed: () {
                widget.type == "Distributor"
                    ? Get.to(DistributorDashboard())
                    : widget.type == "Salesman"
                        ? Get.to(SalesmanDashboard())
                        : Get.to(BottomDashBoard());
              },
            ),
            SizedBox(
              height: 30,
            ),
            widget.type == "Distributor"
                ? SizedBox()
                : widget.type == "Salesman"
                    ? SizedBox()
                    : Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  height: 10,
                                  color: Colors.grey,
                                  thickness: 1,
                                  endIndent: 10,
                                ),
                              ),
                              Poppins(
                                'or',
                                color: Colors.grey,
                              ),
                              Expanded(
                                child: Divider(
                                  height: 10,
                                  color: Colors.grey,
                                  thickness: 1,
                                  indent: 10,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 20,
                            children: [
                              Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.grey, width: 1),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                    child: Image.asset(
                                  'assets/icons/Gmail.png',
                                  width: 24,
                                  height: 24,
                                )),
                              ),
                              Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.grey, width: 1),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                    child: Image.asset(
                                  'assets/icons/Facebook.png',
                                  width: 24,
                                  height: 24,
                                )),
                              ),
                              Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.grey, width: 1),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                    child: Image.asset(
                                  'assets/icons/Apple.png',
                                  width: 24,
                                  height: 24,
                                )),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          widget.type == "Retailer"
                              ?  Row(
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
                                    Get.to(SignUpScreen());
                                  },
                                  child: Poppins(
                                    ' Sign Up',
                                    color: Get.theme.primaryColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  )),
                            ],
                          )
                                  : SizedBox()
      
                        ],
                      )
          ],
        ),
      ),
    );
  }
}
