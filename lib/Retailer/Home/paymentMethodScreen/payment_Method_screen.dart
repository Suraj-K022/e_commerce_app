
import 'package:e_commerce_app/Retailer/Home/paymentMethodScreen/upi_payment_screen/upi_payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'card_payment_screen/card_payment_screen.dart';

class PaymentMethodScreen extends StatelessWidget{
  final bool ?name;

  const PaymentMethodScreen({super.key, this.name,});

  @override
  Widget build(BuildContext context) {

    return
        SafeArea(
          child: Scaffold(backgroundColor: Colors.black,
            appBar:name==true?null:  AppBar(backgroundColor: Colors.black, leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 24,),
              onPressed: () {
                Get.back();
              },
            ),centerTitle: true,title: Text('Payment Method',style: GoogleFonts.montserrat(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),) ,
            body:      Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(

                children: [
                  name==true?SizedBox():  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Align(alignment: Alignment.centerLeft,child: Text('Payment Method',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.white))),
                  ),SizedBox(height: 5,),

                  InkWell(onTap: (){Get.to(UpiPayment());},child: ListTile(minTileHeight: 60,tileColor: Colors.grey[700],shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),leading: CircleAvatar(radius: 22,backgroundColor: Colors.red,child: SizedBox(height: 26,width: 26,child: Image.asset('assets/icons/upi_icon.png')),),title: Text('UPI (Pay via any App)',style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 18,color: Colors.white),),)),
                  SizedBox(height: 18,),
                  InkWell(onTap: (){Get.to(CardPayment());},child: ListTile(minTileHeight: 60,tileColor: Colors.grey[700],shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),leading: CircleAvatar(radius: 22,backgroundColor: Colors.red,child: SizedBox(height: 26,width: 26,child: Image.asset('assets/icons/creditcard_icoon.png')),),title: Text('Credit/Debit Card)',style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 18,color: Colors.white),),)),
                  SizedBox(height: 18,),
                  ListTile(minTileHeight: 60,tileColor: Colors.grey[700],shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),leading: CircleAvatar(radius: 22,backgroundColor: Colors.red,child: SizedBox(height: 26,width: 26,child: Image.asset('assets/icons/wallet_icon.png')),),title: Text('Wallet',style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 18,color: Colors.white),),),
                  SizedBox(height: 18,),
                  ListTile(minTileHeight: 60,tileColor: Colors.grey[700],shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),leading: CircleAvatar(radius: 22,backgroundColor: Colors.red,child: SizedBox(height: 26,width: 26,child: Image.asset('assets/icons/Bank_icon.png')),),title: Text('Net Banking',style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 18,color: Colors.white),),),
                ],),
            )















          ),
        );
  }
}


