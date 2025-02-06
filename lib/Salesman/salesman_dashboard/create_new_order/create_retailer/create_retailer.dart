import 'package:e_commerce_app/Salesman/salesman_dashboard/create_new_order/create_new_order.dart';
import 'package:e_commerce_app/custom_widgets/Custom_input_text_field.dart';
import 'package:e_commerce_app/custom_widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../custom_widgets/custom_texts.dart';

class CreateRetailer extends StatelessWidget {
  const CreateRetailer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 20),
        child: CustomButton(text: 'Submit', onPressed: (){Get.back();}),
      ),
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Get.theme.primaryColor,
        titleSpacing: 0,
        centerTitle: true,
        title: Poppins(
          'Create Retailer',
          color: Get.theme.cardColor,
          fontWeight: FontWeight.w500,
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios_rounded, color: Get.theme.cardColor, size: 24),
        ),

      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 24,vertical: 24),
      children: [
        Poppins('Retailer Name as Per Pan Card',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
        SizedBox(height: 8,),
        CustomTextField(hintText: 'Retailer Name',),
        SizedBox(height: 20,),



        Poppins('Shop Name',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
        SizedBox(height: 8,),
        CustomTextField(hintText: 'Shop Name',),


        SizedBox(height: 20,),



        Poppins('Shop Type',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
        SizedBox(height: 8,),
        CustomTextField(hintText: 'Shop Type',),


        SizedBox(height: 20,),



        Poppins('Mobile Number',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
        SizedBox(height: 8,),
        CustomTextField(hintText: 'Mobile Number',),
        SizedBox(height: 20,),



        Poppins('Pincode',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
        SizedBox(height: 8,),
        CustomTextField(hintText: 'Pincode',),



        SizedBox(height: 20,),
        Row(spacing: 16,
          children: [
            Expanded(flex: 1,child: Container(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Poppins('State'),
                  SizedBox(height: 8,),
                  CustomTextField(hintText: 'State',),
                  
                ],
              ),)),
            Expanded(flex: 1,child: Container(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Poppins('City'),
                  SizedBox(height: 8,),
                  CustomTextField(hintText: 'City'),


                  

                  
                ],
              ),)),

          ],
        ),


        SizedBox(height: 20,),



        Poppins('Address',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
        SizedBox(height: 8,),
        CustomTextField(hintText: 'Address',),



      ],),





    );
  }
}
