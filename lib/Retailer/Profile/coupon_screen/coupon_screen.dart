import 'package:e_commerce_app/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:e_commerce_app/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


import '../../../custom_widgets/dash_divider.dart';

class CouponScreen extends StatefulWidget{
  @override
  State<CouponScreen> createState() => _CouponScreenState();
}

class _CouponScreenState extends State<CouponScreen> {
  int select=0;
  @override
  Widget build(BuildContext context) {
    return
        Scaffold(backgroundColor:Get.theme.scaffoldBackgroundColor,
          appBar: CustomAppBar(title: 'Coupon'),
          body: ListView(padding: EdgeInsets.symmetric(horizontal: 24,vertical: 20),
            children: [
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(spacing: 15,children: [
                  InkWell(onTap: (){setState(() {select=0;});},child: Container(padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:select==0? Get.theme.primaryColor:Get.theme.scaffoldBackgroundColor,border: Border.all(color: Colors.grey,width: 1)),child: Center(child: Poppins('Trending',fontSize: 14,fontWeight: FontWeight.w500,color: select==0?Colors.white:Colors.grey)),),),
                  InkWell(onTap: (){setState(() {select=1;});},child: Container(padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:select==1? Get.theme.primaryColor:Get.theme.scaffoldBackgroundColor,border: Border.all(color: Colors.grey,width: 1)),child: Center(child: Poppins('Discount',fontSize: 14,fontWeight: FontWeight.w500,color:  select==1?Colors.white:Colors.grey)),)),
                  InkWell(onTap: (){setState(() {select=2;});},child: Container(padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:select==2? Get.theme.primaryColor:Get.theme.scaffoldBackgroundColor,border: Border.all(color: Colors.grey,width: 1)),child: Center(child: Poppins('Expire Soon',fontSize: 14,fontWeight: FontWeight.w500,color:  select==2?Colors.white:Colors.grey),),)),
                  InkWell(onTap: (){setState(() {select=3;});},child: Container(padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:select==3? Get.theme.primaryColor:Get.theme.scaffoldBackgroundColor,border: Border.all(color: Colors.grey,width: 1)),child: Center(child: Poppins('All',fontSize: 14,fontWeight: FontWeight.w500,color: select==3?Colors.white:Colors.grey)),),),
                ],),
              ),

              SizedBox(height: 20,),

              Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Get.theme.cardColor,border: Border.all(width: 1,color: Colors.white)),
              child:


              Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,spacing: 15,
                children: [
                Container(height: 100,width: 88,decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),child: ClipRRect(borderRadius: BorderRadius.circular(4),child: Image.asset(images.cloth,fit: BoxFit.cover,)),),

                  SizedBox(height: 100,width: 2,
                    child: VerticalDashedDivider(
                      dashWidth: 2,
                      dashHeight: 8,
                      color: Colors.grey,
                    ),
                  ),



                Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Poppins('Flat 10% OFF',fontSize: 16,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor
                      ,),
                    Row(mainAxisAlignment: MainAxisAlignment.start,spacing: 5,
                      children: [
                      Poppins('Code :',fontSize: 16,fontWeight: FontWeight.w600,color:Get.theme.secondaryHeaderColor),
                      Poppins(' GYSSDHNJ22',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey),
                      SizedBox(width: 5,),
                      Icon(Icons.copy,color: Colors.white,size: 20,)

                    ],),
                    Row(mainAxisAlignment: MainAxisAlignment.start,spacing: 5,
                      children: [
                      Poppins('Expire :',fontSize: 16,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor),
                      Poppins('11/11/2024',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey),


                    ],),




                  ],
                )
              ],),
              ),
              SizedBox(height: 15,),



              Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Get.theme.cardColor,border: Border.all(width: 1,color: Colors.white)),
                child:


                Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,spacing: 15,
                  children: [
                    Container(height: 100,width: 88,decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),child: ClipRRect(borderRadius: BorderRadius.circular(4),child: Image.asset(images.cloth,fit: BoxFit.cover,)),),

                    SizedBox(height: 100,width: 2,
                      child: VerticalDashedDivider(
                        dashWidth: 2,
                        dashHeight: 8,
                        color: Colors.grey,
                      ),
                    ),



                    Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Poppins('Flat 10% OFF',fontSize: 16,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor
                          ,),
                        Row(mainAxisAlignment: MainAxisAlignment.start,spacing: 5,
                          children: [
                            Poppins('Code :',fontSize: 16,fontWeight: FontWeight.w600,color:Get.theme.secondaryHeaderColor),
                            Poppins(' GYSSDHNJ22',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey),
                            SizedBox(width: 5,),
                            Icon(Icons.copy,color: Colors.white,size: 20,)

                          ],),
                        Row(mainAxisAlignment: MainAxisAlignment.start,spacing: 5,
                          children: [
                            Poppins('Expire :',fontSize: 16,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor),
                            Poppins('11/11/2024',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey),


                          ],),




                      ],
                    )
                  ],),
              ),
              SizedBox(height: 15,),


              Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Get.theme.cardColor,border: Border.all(width: 1,color: Colors.white)),
                child:


                Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,spacing: 15,
                  children: [
                    Container(height: 100,width: 88,decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),child: ClipRRect(borderRadius: BorderRadius.circular(4),child: Image.asset(images.cloth,fit: BoxFit.cover,)),),

                    SizedBox(height: 100,width: 2,
                      child: VerticalDashedDivider(
                        dashWidth: 2,
                        dashHeight: 8,
                        color: Colors.grey,
                      ),
                    ),



                    Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Poppins('Flat 10% OFF',fontSize: 16,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor
                          ,),
                        Row(mainAxisAlignment: MainAxisAlignment.start,spacing: 5,
                          children: [
                            Poppins('Code :',fontSize: 16,fontWeight: FontWeight.w600,color:Get.theme.secondaryHeaderColor),
                            Poppins(' GYSSDHNJ22',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey),
                            SizedBox(width: 5,),
                            Icon(Icons.copy,color: Colors.white,size: 20,)

                          ],),
                        Row(mainAxisAlignment: MainAxisAlignment.start,spacing: 5,
                          children: [
                            Poppins('Expire :',fontSize: 16,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor),
                            Poppins('11/11/2024',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey),


                          ],),




                      ],
                    )
                  ],),
              ),
              SizedBox(height: 15,),


              Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Get.theme.cardColor,border: Border.all(width: 1,color: Colors.white)),
                child:


                Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,spacing: 15,
                  children: [
                    Container(height: 100,width: 88,decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),child: ClipRRect(borderRadius: BorderRadius.circular(4),child: Image.asset(images.cloth,fit: BoxFit.cover,)),),

                    SizedBox(height: 100,width: 2,
                      child: VerticalDashedDivider(
                        dashWidth: 2,
                        dashHeight: 8,
                        color: Colors.grey,
                      ),
                    ),



                    Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Poppins('Flat 10% OFF',fontSize: 16,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor
                          ,),
                        Row(mainAxisAlignment: MainAxisAlignment.start,spacing: 5,
                          children: [
                            Poppins('Code :',fontSize: 16,fontWeight: FontWeight.w600,color:Get.theme.secondaryHeaderColor),
                            Poppins(' GYSSDHNJ22',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey),
                            SizedBox(width: 5,),
                            Icon(Icons.copy,color: Colors.white,size: 20,)

                          ],),
                        Row(mainAxisAlignment: MainAxisAlignment.start,spacing: 5,
                          children: [
                            Poppins('Expire :',fontSize: 16,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor),
                            Poppins('11/11/2024',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey),


                          ],),




                      ],
                    )
                  ],),
              ),
              SizedBox(height: 15,),


            ],
          ),
        );
  }
}