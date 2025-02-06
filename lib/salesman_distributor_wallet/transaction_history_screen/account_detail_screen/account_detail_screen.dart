import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../custom_widgets/custom_texts.dart';

class AccountDetailScreen extends StatelessWidget {
  const AccountDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Get.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Get.theme.primaryColor,
        titleSpacing: 0,
        centerTitle: true,
        title: Poppins(
          'Account Details',
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
      body: 
      ListView(padding: EdgeInsets.symmetric(horizontal: 24,vertical: 20),
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Poppins('Acc Holder Name :',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,), Poppins('Mayur Soni',fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey[700],),],),
          Divider(color: Colors.grey,height: 20,thickness: 1,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Poppins('Acc Number : ',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,), Poppins('47474431854',fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey[700],),],),
          Divider(color: Colors.grey,height: 20,thickness: 1,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Poppins('Bank Name :',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,), Poppins('SBI (State Bank of India)',fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey[700],),],),
          Divider(color: Colors.grey,height: 20,thickness: 1,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Poppins('IFCI Code :',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,), Poppins('SBIN001200',fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey[700],),],),
          Divider(color: Colors.grey,height: 20,thickness: 1,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Poppins('Withdraw Amount :',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,), Poppins('₹24000',fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey[700],),],),

        ],
      ),

    );
  }
}
