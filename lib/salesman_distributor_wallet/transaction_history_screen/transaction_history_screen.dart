import 'package:e_commerce_app/salesman_distributor_wallet/transaction_history_screen/account_detail_screen/account_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../custom_widgets/custom_texts.dart';

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Get.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Get.theme.primaryColor,
        titleSpacing: 0,
        centerTitle: true,
        title: Poppins(
          'Transaction History',
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
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24,vertical: 10),
        children: [
          InkWell(onTap: (){Get.to(AccountDetailScreen());},
            child: ListTile(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),tileColor: Get.theme.cardColor,contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 0),
              title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Poppins('Amount Withdraw Successfull',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,fontSize: 16,),
                  Poppins('11/11/2024',color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 12,)
                ],
              ),
              subtitle: Poppins('₹ 24,000',color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 16,),
              ),
          ),
          SizedBox(height: 10,),


          InkWell(onTap: (){Get.to(AccountDetailScreen());},
            child: ListTile(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),tileColor: Get.theme.cardColor,contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 0),
              title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Poppins('Amount Withdraw Successfull',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,fontSize: 16,),
                  Poppins('11/11/2024',color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 12,)
                ],
              ),
              subtitle: Poppins('₹ 24,000',color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 16,),
            ),
          ),
          SizedBox(height: 10,),
          InkWell(onTap: (){Get.to(AccountDetailScreen());},
            child: ListTile(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),tileColor: Get.theme.cardColor,contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 0),
              title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Poppins('Amount Withdraw Successfull',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,fontSize: 16,),
                  Poppins('11/11/2024',color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 12,)
                ],
              ),
              subtitle: Poppins('₹ 24,000',color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 16,),
            ),
          ),
          SizedBox(height: 10,),
          InkWell(onTap: (){Get.to(AccountDetailScreen());},
            child: ListTile(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),tileColor: Get.theme.cardColor,contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 0),
              title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Poppins('Amount Withdraw Successfull',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,fontSize: 16,),
                  Poppins('11/11/2024',color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 12,)
                ],
              ),
              subtitle: Poppins('₹ 24,000',color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 16,),
            ),
          ),
          SizedBox(height: 10,)
        ],
      ),

    );
  }
}
