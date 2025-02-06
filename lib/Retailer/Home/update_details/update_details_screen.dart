import 'package:e_commerce_app/bottom_dash_board/bottom_dash_board.dart';
import 'package:e_commerce_app/custom_widgets/Custom_input_text_field.dart';
import 'package:e_commerce_app/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_app/custom_widgets/custom_buttons.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:e_commerce_app/custom_widgets/gender_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../custom_widgets/custom_phoneno_textField.dart';

class UpdateDetailsScreen extends StatelessWidget {
   // Make sure to pass image URL to this screen

  const UpdateDetailsScreen({super.key, }); // Required imageUrl in constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      appBar: CustomAppBar(title: 'Update Details'),
      bottomNavigationBar:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 20),
        child: CustomButton(text: 'Update', onPressed: (){Get.to(BottomDashBoard(initialIndex: 0,));}),
      )
      ,
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          SizedBox(height: 38,),
          Align(alignment: Alignment.center,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // Large circle container with image
                Container(
                  width: 120, // Size of the large circle
                  height: 120, // Size of the large circle
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Get.theme.primaryColor, width: 1.5), // 1px red border
                    image: DecorationImage(
                      image: AssetImage('assets/icons/profilepic2.png'), // Image inside the large circle
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      // Smaller circle container with image at the right-bottom corner
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          child: Center(child: Container(height: 25,width: 25,child: Image.asset('assets/icons/Camera.png'),)),
                          width: 40, // Size of the small circle
                          height: 40, // Size of the small circle
                          decoration: BoxDecoration(
                            color: Get.theme.scaffoldBackgroundColor,


                            shape: BoxShape.circle,
                            border: Border.all(color: Get.theme.primaryColor, width: 1.5), // 1px red border

                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Poppins('Mayur Soni',fontSize: 18,fontWeight: FontWeight.w500,textAlign: TextAlign.center,),
          Poppins('mayursoni@gmail.com',fontSize: 12,fontWeight: FontWeight.w500,textAlign: TextAlign.center,),



          SizedBox(height: 20,),
          Poppins('Name',fontWeight: FontWeight.w500,fontSize: 16,),
          SizedBox(height: 8,),
          CustomTextField(hintText: 'Enter Name'),
          SizedBox(height: 20,),
          Poppins('Email Id',fontWeight: FontWeight.w500,fontSize: 16,),
          SizedBox(height: 8,),
          CustomTextField(hintText: 'Enter Email Id'),
          SizedBox(height: 20,),

          Poppins('Phone Number',fontWeight: FontWeight.w500,fontSize: 16,),
          SizedBox(height: 8,),


          PhoneNumberTextField(),




          SizedBox(height: 20,),
          Poppins('Gender',fontWeight: FontWeight.w500,fontSize: 16,),
          SizedBox(height: 8,),
          GenderDropdown(),

          // Expanded(flex: 1,child: SizedBox(height: 100,),),



        ],
      ),
    );
  }
}
