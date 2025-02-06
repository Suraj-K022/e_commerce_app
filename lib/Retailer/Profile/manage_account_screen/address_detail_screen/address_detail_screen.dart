
import 'package:e_commerce_app/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_app/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../custom_widgets/custom_texts.dart';
import 'add_address_screen/add_address_screen.dart';
import 'address_update_screen/address_update_screen.dart';

class AddressDetailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
        Scaffold(backgroundColor: Get.theme.scaffoldBackgroundColor, 
          appBar: CustomAppBar(title: 'Address Detail'),
          body: ListView(
            children: [
              InkWell(onTap:(){Get.to(AddressAddressScreen());} ,
                child: Container(height: 40,padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(spacing: 10,children: [
                    Icon(Icons.add_circle_outline_sharp,color:Get.theme.secondaryHeaderColor,size: 24,),
                    Poppins('Add New Address',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor),




















                  ],),


                ),
              ),
              SizedBox(height: 10,),


              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Get.theme.cardColor),margin: EdgeInsets.symmetric(horizontal: 24),padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                      children: [
                        Poppins('Mayur Soni' ,fontSize: 16, fontWeight: FontWeight.w500, color: Get.theme.secondaryHeaderColor),
                        TextButton(onPressed: (){}, child: Poppins('Home' ,fontSize: 14, fontWeight: FontWeight.w600, color: Get.theme.primaryColor),),
                      ],
                    ),
                    Poppins('Kalani Nagar house no 2 Indore',fontSize: 14, fontWeight: FontWeight.w400, color: Get.theme.secondaryHeaderColor),
                    Poppins('Near BSF Border',fontSize: 14, fontWeight: FontWeight.w400, color:Get.theme.secondaryHeaderColor),
                    Poppins('Indore, Madhya Pradesh 41254',fontSize: 14, fontWeight: FontWeight.w400, color: Get.theme.secondaryHeaderColor),


                    RichText(
                      text: TextSpan(
                        text: 'Mobile : '
                        ,style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Get.theme.secondaryHeaderColor),
                        children: [
                          TextSpan(
                            text: '7974944974'

                            ,style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),

                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
                child: Row(spacing: 15,
                  children: [
                    Expanded(flex: 1,child: InkWell(onTap: (){Get.to(AddressAddressScreen());},child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(4,),color: Get.theme.scaffoldBackgroundColor,border: Border.all(width: 1,color: Get.theme.primaryColor)),height: 48,child: Center(child: Poppins('Edit' ,fontSize: 16, fontWeight: FontWeight.w500, color: Get.theme.primaryColor),),),)),
                    Expanded(flex: 1,child: InkWell(onTap: (){
                       showDialog(context: context, builder: (context) {
                        return
                            AlertDialog(backgroundColor: Get.theme.cardColor,
                              title: Column(spacing: 10,mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                              CircleAvatar(radius: 20,backgroundColor: Get.theme.primaryColor,child: Image.asset(images.location,color: Colors.white,width: 26,height: 26,)),
                                Poppins('Remove',fontSize: 20, fontWeight: FontWeight.w600, color: Get.theme.secondaryHeaderColor),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Text('Are you sure want to delete this location ?',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color:Get.theme.secondaryHeaderColor),),
                                ),
                                  SizedBox(height: 5,),
                                  Row(spacing: 10,
                                    children: [
                                    Expanded(flex: 1,child: InkWell(onTap: (){Get.to(AddressAddressScreen());},child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: Get.theme.primaryColor),height: 38,child: Center(child: Poppins('Yes',fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white)),),)),
                                    Expanded(flex: 1,child: InkWell(onTap: () => Get.back(),child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: Colors.white,border: Border.all(width: 1,color:Get.theme.primaryColor)),height: 38,child: Center(child: Text('No',style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600, color: Get.theme.primaryColor)),)))),
                                  ],)
                            ],),contentPadding: EdgeInsets.symmetric(horizontal: 20),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),



                            );
                      },);
                    },child: Container(decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1),borderRadius: BorderRadius.circular(4),color: Get.theme.scaffoldBackgroundColor),height: 48,child: Center(child: Poppins('Remove' ,fontSize: 16, fontWeight: FontWeight.w500, color:Colors.grey[600])))))
                  ],
                ),
              )

            ],
          ),
        );
  }
}