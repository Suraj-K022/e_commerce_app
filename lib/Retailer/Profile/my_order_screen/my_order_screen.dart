
import 'package:e_commerce_app/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'order_detail_screen/order_detail_screen.dart';

class MyOrderScreen extends StatefulWidget{

  const MyOrderScreen({super.key});

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();

}

class _MyOrderScreenState extends State<MyOrderScreen> {
  int select=0;

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(backgroundColor:Get.theme.scaffoldBackgroundColor,
          appBar: CustomAppBar(title: 'My Orders'),
          body:
          ListView(padding: EdgeInsets.symmetric(horizontal: 24),physics: NeverScrollableScrollPhysics(),
            children: [
              SizedBox(height: 15,),
              Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                InkWell(onTap: (){setState((){select=0;});},child: Container(height: 30,decoration: BoxDecoration(color:select==0?Get.theme.secondaryHeaderColor:Get.theme.scaffoldBackgroundColor,borderRadius: BorderRadius.circular(25)),padding: EdgeInsets.symmetric(horizontal: 15),child: Center(child: Text('Delivered',style: GoogleFonts.poppins(color: select==0?Colors.white:Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w400,fontSize: 14),)))),
                InkWell(onTap: (){setState((){select=1;});},child: Container(height: 30,decoration: BoxDecoration(color:select==1?Get.theme.secondaryHeaderColor:Get.theme.scaffoldBackgroundColor,borderRadius: BorderRadius.circular(25)),padding: EdgeInsets.symmetric(horizontal: 15),child: Center(child: Text('Processing',style: GoogleFonts.poppins(color: select==1?Colors.white:Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w400,fontSize: 14),)))),
                InkWell(onTap: (){setState((){select=2;});},child: Container(height: 30,decoration: BoxDecoration(color:select==2?Get.theme.secondaryHeaderColor:Get.theme.scaffoldBackgroundColor,borderRadius: BorderRadius.circular(25)),padding: EdgeInsets.symmetric(horizontal: 15),child: Center(child: Text('Cancelled',style: GoogleFonts.poppins(color: select==2?Colors.white:Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w400,fontSize: 14),)))),
              ],),


              SizedBox(height: 20,),

              ListTile(shape: RoundedRectangleBorder(side: BorderSide(width: 1,color: Colors.white),borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))),tileColor: Get.theme.cardColor,contentPadding: EdgeInsets.symmetric(horizontal: 10),
                title: Poppins('Order ID',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black),trailing:  Text('#1000210',style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[800]),),
              ),
              ListTile(shape: RoundedRectangleBorder(side: BorderSide(width: 1,color: Colors.white)),tileColor: Get.theme.cardColor,contentPadding: EdgeInsets.symmetric(horizontal: 10),
                title: Poppins('Order Date',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black),trailing:  Text('20 Mar 2024 02:00 PM',style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[800]),),
              ),
              ListTile(shape: RoundedRectangleBorder(side: BorderSide(width: 1,color: Colors.white)),tileColor:Get.theme.cardColor,contentPadding: EdgeInsets.symmetric(horizontal: 10),
                title: Poppins('Payment Method',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black),trailing:  Text('Card',style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[800]),),
              ),
              ListTile(shape: RoundedRectangleBorder(side: BorderSide(width: 1,color: Colors.white)),tileColor: Get.theme.cardColor,contentPadding: EdgeInsets.symmetric(horizontal: 10),
                title: Poppins('Item: 2',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black),
                trailing:  SizedBox(width: 100,
                  child: Row(spacing: 10,mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(radius: 5,backgroundColor: Colors.red,),
                      Poppins('Pending',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[800]),
                    ],
                  ),
                ),


              ),

              ListTile(shape: RoundedRectangleBorder(side: BorderSide(width: 1,color: Colors.white),borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))),tileColor: Get.theme.cardColor,contentPadding: EdgeInsets.symmetric(horizontal: 10),minTileHeight: 14,
               title: Center(child: InkWell(onTap: (){Get.to(OrderDetail(2));},child: Container(margin: EdgeInsets.symmetric(vertical: 5),decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1),color: Get.theme.cardColor,borderRadius: BorderRadius.circular(20)),padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),child: Poppins('Order Details',fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey)))),
              ),

            ],
          )






      );
  }
}