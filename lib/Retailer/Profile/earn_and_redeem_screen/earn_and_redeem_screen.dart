import 'package:e_commerce_app/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:e_commerce_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// import '../../../custom_Widget/dashed_container.dart';
import '../../../custom_widgets/dashed_container.dart';

class EarnAndRedeemScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
        Scaffold(backgroundColor: Get.theme.scaffoldBackgroundColor,
          appBar:CustomAppBar(title: 'Earn & Redeem'),
          body: ListView(padding: EdgeInsets.symmetric(horizontal: 24),
            children: [
              SizedBox(height: 20,),
              SizedBox(height: 160,child: Image.asset(images.illustration),),
              SizedBox(height: 20,),
              Align(alignment: Alignment.center,child: Poppins('Earn money on every refral',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor)) ,
              SizedBox(height: 20,),
              Align(alignment: Alignment.center,child: Poppins('1 Refer = ₹ 50',fontSize: 20,fontWeight: FontWeight.w600,color: Colors.grey[600])),
              SizedBox(height: 50,),
              Align(alignment: Alignment.center,child: Poppins('Invite friends & business',fontSize: 24,fontWeight: FontWeight.w500,color:  Get.theme.secondaryHeaderColor)),
              SizedBox(height: 15,),
              Align(alignment: Alignment.center,child: Poppins('Copy your code, sharer it with your friend',fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey[600])),
              SizedBox(height: 30,),






              DashedBorderContainer(borderRadius: 50,strokeWidth: 2,dashSpacing: 10,dashWidth: 10,color: Get.theme.primaryColor,
                child:
              Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [


                    Container(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),child: Center(child: Text('GFDNUD',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey)),),),



                    Container(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:Get.theme.primaryColor),child: Center(child: Text('Copy Code',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)),),),

                  ],),),),



SizedBox(height: 25,),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Get.theme.cardColor,border: Border.all(width: 1,color: Colors.grey.shade200)),padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10)
                ,child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,children: [


                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child:
                    Column(mainAxisAlignment: MainAxisAlignment.center,spacing: 10,
                      children: [
                      Container(height: 50,width: 50,child: Image.asset(images.whatsapp),),
                      Text('Invite Via\n Whatsapp',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w500,color: Colors.black)),

                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child:
                    Column(mainAxisAlignment: MainAxisAlignment.center,spacing: 10,
                      children: [
                      Container(height: 50,width: 50,child: Image.asset(images.qr),),
                      Text('Invite Via\n Referral QR',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w500,color: Colors.black)),

                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child:
                    Column(mainAxisAlignment: MainAxisAlignment.center,spacing: 10,
                      children: [
                      Container(height: 50,width: 50,child: Image.asset(images.menu),),
                      Text('More \nOptions',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w500,color: Colors.black)),

                    ],),
                  ),




                ],),),
SizedBox(height: 20,),



              Container(height: 160,decoration: BoxDecoration(border: Border.all(color: Get.theme.primaryColor,width: 1),borderRadius: BorderRadius.circular(10),color:  Color(0xFFF3F5E4)),
                child:Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Total Cashback\n Points',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w600,color:  Get.theme.secondaryHeaderColor)),
                    Text('254',style: GoogleFonts.poppins(fontSize: 40,fontWeight: FontWeight.w700,color:  Get.theme.secondaryHeaderColor)),



                  ],

                ) ,)





            ],
          ),
        );
  }
}