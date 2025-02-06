import 'package:e_commerce_app/custom_widgets/custom_statement_list.dart';
import 'package:e_commerce_app/salesman_distributor_wallet/add_bank_detail/add_bank_detail.dart';
import 'package:e_commerce_app/salesman_distributor_wallet/transaction_history_screen/transaction_history_screen.dart';
import 'package:e_commerce_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../custom_widgets/custom_texts.dart';

class SalesmanDistributorWallet extends StatelessWidget {
  const SalesmanDistributorWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Get.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        actions: [InkWell(onTap: (){Get.to(TransactionHistoryScreen());},child: Image.asset(images.clockcounter,height: 24,width: 24,color: Get.theme.cardColor,fit: BoxFit.cover,)),SizedBox(width: 24,)],
        backgroundColor: Get.theme.primaryColor,
        titleSpacing: 0,
        centerTitle: true,
        title: Poppins(
          'Wallet',
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
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 24,vertical: 20),
        children: [
          Container(padding:EdgeInsets.symmetric(horizontal: 20,vertical: 6),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                begin: Alignment.topLeft, // start of the gradient
                end: Alignment.bottomRight, // end of the gradient
                colors: [
                  Get.theme.primaryColor, // #B0CB1F color
                  Color.fromRGBO(176, 203, 31, 0.4), // rgba(176, 203, 31, 0.4) color with opacity
                ],
                transform: GradientRotation(-19.86 * (3.1415927 / 180)), // Rotate the gradient to match the angle
              ),

            ),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Poppins('Commission',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.cardColor,),
                 Poppins('₹25,000.00',fontSize: 24,fontWeight: FontWeight.w700,color: Get.theme.cardColor,),
               ],
            ),
            InkWell(onTap: (){Get.to(AddBankDetailScreeen());},child: Container(padding: EdgeInsets.symmetric(vertical: 6,horizontal: 20),decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: Get.theme.primaryColor),child: Center(child: Poppins('Withdraw',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.cardColor,),),))
          ],),),
SizedBox(height: 20,),

          Poppins('Statement',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,fontSize: 16,),

         TransactionTile(location: 'Indore', type: 'Commission', typeColor: Colors.red, dateTime: 'Mon, 11 Dec, 2024 : 8:30 PM', amount: '100.00'),
         TransactionTile(location: 'Indore', type: 'Earning', typeColor: Colors.green, dateTime: 'Mon, 11 Dec, 2024 : 8:30 PM', amount: '500.00'),
         TransactionTile(location: 'Bhopal', type: 'Commission', typeColor: Colors.red, dateTime: 'Mon, 11 Dec, 2024 : 8:30 PM', amount: '100.00'),
         TransactionTile(location: 'West Andheri', type: 'Earning', typeColor: Colors.green, dateTime: 'Mon, 11 Dec, 2024 : 8:30 PM', amount: '500.00'),
          TransactionTile(location: 'Indore', type: 'Commission', typeColor: Colors.red, dateTime: 'Mon, 11 Dec, 2024 : 8:30 PM', amount: '100.00'),
          TransactionTile(location: 'Indore', type: 'Earning', typeColor: Colors.green, dateTime: 'Mon, 11 Dec, 2024 : 8:30 PM', amount: '500.00'),



        ],
      ),

    );
  }
}
