import 'package:e_commerce_app/authorisation_screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../authorisation_screens/forgot_password_screen/forgot_password_screen.dart';
import '../../authorisation_screens/signup_screen/signup_screen.dart';
import '../../bottom_dash_board/bottom_dash_board.dart';
import '../../custom_widgets/Custom_input_text_field.dart';
import '../../custom_widgets/custom_buttons.dart';
import '../../custom_widgets/custom_texts.dart';
import '../../utils/images.dart';

class EntityScreen extends StatefulWidget {
  const EntityScreen({super.key});

  @override
  State<EntityScreen> createState() => _EntityScreenState();
}

class _EntityScreenState extends State<EntityScreen> {
  String? type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        physics: NeverScrollableScrollPhysics(),
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
          Poppins(
            'Join as a',
            color: Colors.grey[800],
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                border: Border.all(width: 1, color: Colors.grey.shade400)),
            child: Column(
              spacing: 16,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      setState(() {
                        type="Retailer";

                      });

                      Get.to(()=>LoginScreen(type: type,));

                    },
                    child: Container(
                      height: 56,
                      decoration: BoxDecoration(
                          color: Get.theme.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Center(
                        child: Poppins(
                          'Retailer',
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () {


                      setState(() {
                        type="Distributor";

                      });
                      Get.to(()=>LoginScreen(type: type,));



                    },
                    child: Container(
                      height: 56,
                      decoration: BoxDecoration(
                          color: Get.theme.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Center(
                        child: Poppins(
                          'Distributor ',
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () {

                      setState(() {
                        type="Salesman";

                      });
                      Get.to(()=>LoginScreen(type: type,));


                    },
                    child: Container(
                      height: 56,
                      decoration: BoxDecoration(
                          color: Get.theme.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Center(
                        child: Poppins(
                          'Salesman',
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
