
import 'package:e_commerce_app/bottom_dash_board/bottom_dash_board.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:e_commerce_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../custom_widgets/custom_buttons.dart';

class PaymentDoneScreen extends StatelessWidget{
  const PaymentDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
        Scaffold(backgroundColor: Get.theme.scaffoldBackgroundColor,
          body: Center(

            child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: SizedBox()),
              Image.asset(images.success,width: 208,height: 213,),
                SizedBox(height: 20,),


                Poppins(' Success!',fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor,fontSize: 34),
                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Poppins('Your order will be delivered soon. Thank you for choosing our app!',textAlign:TextAlign.center ,fontWeight: FontWeight.w400,color:Get.theme.secondaryHeaderColor,maxLines: 10,fontSize: 14),),

                Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
                  child: CustomButton(text: 'Back to home', onPressed: (){
                    Get.to(BottomDashBoard(initialIndex: 0,));

                  }),
                ),
                SizedBox(height: 10,)
            ],),),
        );
    

  }
}