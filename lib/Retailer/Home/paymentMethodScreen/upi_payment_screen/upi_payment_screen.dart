

import 'package:e_commerce_app/custom_widgets/Custom_input_text_field.dart';
import 'package:e_commerce_app/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_app/custom_widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../custom_widgets/custom_texts.dart';
import '../success_payment_screen/Payment_Done_screen.dart';

class UpiPayment extends StatelessWidget{
  const UpiPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return
        SafeArea(child: Scaffold(
          backgroundColor: Get.theme.scaffoldBackgroundColor,
          appBar: CustomAppBar(title: 'UPI'),
          body:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,spacing: 10,
              children: [Poppins('UPI ID',fontSize: 16,fontWeight: FontWeight.w500,color:Get.theme.secondaryHeaderColor),
                CustomTextField(hintText: 'Enter UPI Id'),
                Expanded(child: SizedBox()),

                Row(spacing: 15,
                  children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Poppins('Amount Pay',color: Get.theme.secondaryHeaderColor,fontSize: 12,fontWeight: FontWeight.w600),
                    Poppins('\$29.99',color: Get.theme.primaryColor,fontSize: 14,fontWeight: FontWeight.w600)
                  ],),
                  Expanded(child: CustomButton(text: 'Pay Now', onPressed: (){Get.to(PaymentDoneScreen());})),


                ],),
                SizedBox(height: 5,)

              ],
            ),
          )
        ));
  }
}