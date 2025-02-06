import 'package:e_commerce_app/Retailer/Home/update_details/update_details_screen.dart';
// import 'package:e_commerce_app/Retailer/Profile/manage_account_screen/update_detail_screen/update_detail_screen.dart';
import 'package:e_commerce_app/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:e_commerce_app/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'address_detail_screen/address_detail_screen.dart';

class ManageAccountScreen extends StatelessWidget {
  const ManageAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Get.theme.scaffoldBackgroundColor,
          appBar: CustomAppBar(title: 'Manage Account'),
          body:

          ListView(padding: EdgeInsets.symmetric(horizontal: 24,vertical: 10),
            children: [
              SizedBox(height: 10,),
              InkWell(onTap:(){Get.to(UpdateDetailsScreen());} ,
                child: Container(padding: EdgeInsets.symmetric(horizontal: 12),height: 48,decoration: BoxDecoration(color: Get.theme.cardColor,borderRadius: BorderRadius.circular(8)
                ),child: Row(spacing: 12,children: [
                  SizedBox(height: 24,width: 24,child: Image.asset(images.profile,color: Get.theme.secondaryHeaderColor,fit: BoxFit.cover,),),
                  Poppins('Account Details',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor),

                ],),),
              ),
              SizedBox(height: 20,),


              InkWell(onTap: (){Get.to(AddressDetailScreen());},
                child: Container(padding: EdgeInsets.symmetric(horizontal: 12),height: 48,decoration: BoxDecoration(color:Get.theme.cardColor,borderRadius: BorderRadius.circular(8)
                ),child: Row(spacing: 12,children: [
                  SizedBox(height: 24,width: 24,child: Image.asset(images.location,color: Get.theme.secondaryHeaderColor,fit: BoxFit.cover),),
                  Poppins('Address Details',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor),

                ],),),
              ),
            ],
          )
      );



      ;
  }
}
