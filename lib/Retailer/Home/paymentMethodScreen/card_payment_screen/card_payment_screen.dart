
import 'package:e_commerce_app/custom_widgets/Custom_input_text_field.dart';
import 'package:e_commerce_app/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_app/custom_widgets/custom_buttons.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../success_payment_screen/Payment_Done_screen.dart';

class CardPayment extends StatelessWidget{
  const CardPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return
      SafeArea(child: Scaffold(
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        appBar: CustomAppBar(title: 'Card Details'),
        body:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Poppins('Card Holder Name',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor),
              SizedBox(height: 8,),
              CustomTextField(hintText: 'Enter Holder Name'),

              SizedBox(height: 20,),



              Poppins('Card Number',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor),
              SizedBox(height: 8,),
              CustomTextField(hintText: 'Enter Card Number'),
              SizedBox(height: 20,),






              Row(spacing: 10,crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,spacing: 10,
                    children: [


                      Poppins('Exp',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor),
                    SizedBox(
                        height: 48,width: 175,
                        child:
                        CustomTextField(hintText: 'Exp')
                    ),

                  ],),

                  Column(crossAxisAlignment: CrossAxisAlignment.start,spacing: 10,
                    children: [



                      Poppins('CVV',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor),


                      SizedBox(
                          height: 48,width: 175,
                          child:
                          CustomTextField(hintText: 'CVV')
                      ),

                  ],)







              ],),





































              Expanded(child: SizedBox()),

              Row(spacing: 15,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Poppins('Amount Pay',color: Get.theme.secondaryHeaderColor,fontSize: 12,fontWeight: FontWeight.w600),
                      Poppins('\$29.99',color: Get.theme.primaryColor,fontSize: 14,fontWeight: FontWeight.w600)
                    ],),































                  Expanded(child: CustomButton(text: 'PayNow', onPressed: (){Get.to(PaymentDoneScreen());})
                  ),


                ],),
              SizedBox(height: 5,)

            ],
          ),
        )


        ,
      ));
  }
}