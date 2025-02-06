import 'package:e_commerce_app/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:e_commerce_app/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stepper/smart_stepper.dart';

class OrderDetail extends StatefulWidget{
   late final int? step;

   OrderDetail(this.step);

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  @override
  Widget build(BuildContext context) {

    return
        Scaffold(
          backgroundColor: Get.theme.scaffoldBackgroundColor,
          appBar: CustomAppBar(title: 'My Orders'),
          body:
          ListView(padding: EdgeInsets.symmetric(horizontal: 24),physics: NeverScrollableScrollPhysics(),
            children: [
              SizedBox(height: 15,),
              Poppins('Order Informtaion',fontSize: 16,fontWeight: FontWeight.w500,color:Get.theme.secondaryHeaderColor),
              SizedBox(height: 20,),

              ListTile(shape: RoundedRectangleBorder(side: BorderSide(width: 1,color: Colors.grey.shade200),borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))),tileColor: Get.theme.cardColor,contentPadding: EdgeInsets.symmetric(horizontal: 10),
                title: Poppins('Order ID',fontSize: 14,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor),trailing:  Poppins('#1000210',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey),
              ),
              ListTile(shape: RoundedRectangleBorder(side: BorderSide(width: 1,color: Colors.grey.shade200)),tileColor: Get.theme.cardColor,contentPadding: EdgeInsets.symmetric(horizontal: 10),
                title: Poppins('Order Date',fontSize: 14,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor),trailing:  Poppins('20 Mar 2024 02:00 PM',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey),
              ),
              ListTile(shape: RoundedRectangleBorder(side: BorderSide(width: 1,color: Colors.grey.shade200)),tileColor: Get.theme.cardColor,contentPadding: EdgeInsets.symmetric(horizontal: 10),
                title: Poppins('Payment Method',fontSize: 14,fontWeight: FontWeight.w400,color:Get.theme.secondaryHeaderColor),trailing:  Poppins('Card',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey),
              ),
              ListTile(shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),side: BorderSide(width: 1,color: Colors.grey.shade200)),tileColor: Get.theme.cardColor,contentPadding: EdgeInsets.symmetric(horizontal: 10),
                title: Poppins('Item: 2',fontSize: 14,fontWeight: FontWeight.w400,color:Get.theme.secondaryHeaderColor),
                trailing:  SizedBox(width: 100,
                  child: Row(spacing: 10,mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(radius: 5,backgroundColor: Colors.red,),
                      Poppins('Pending',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey),
                    ],
                  ),
                ),


              ),


              SizedBox(height: 20,),
              Poppins('Order Details',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor),
              SizedBox(height: 20,),

              Container(padding: EdgeInsets.symmetric(horizontal: 10),height: 77 ,decoration: BoxDecoration(color:Get.theme.cardColor,border: Border.all(color: Colors.white,width: 1),borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(spacing: 15,
                  children: [
                  Container(child: Image.asset(images.womenwear4,fit: BoxFit.cover,),height: 58,width: 58,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(5) )),),
                  Column(spacing: 5,
                    mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Poppins('Fitness Tshirt',fontSize: 14,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor),
                    Row(spacing: 10,children: [
                      Poppins('₹1,000',fontSize: 12,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor),
                      Poppins('₹800',fontSize: 12,fontWeight: FontWeight.w700,color: Get.theme.primaryColor),
                    ],)
                  ],)
                ],),) ,

              SizedBox(height: 15,),

              Container(padding: EdgeInsets.symmetric(horizontal: 10),height: 77 ,decoration: BoxDecoration(color:Get.theme.cardColor,border: Border.all(color: Colors.white,width: 1),borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(spacing: 15,
                  children: [
                  Container(child: Image.asset(images.womenwear8,fit: BoxFit.cover,),height: 58,width: 58,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(5) )),),
                  Column(spacing: 5,
                    mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Poppins('Fitness Tshirt',fontSize: 14,fontWeight: FontWeight.w500,color:Get.theme.secondaryHeaderColor),
                    Row(spacing: 10,children: [
                      Poppins('₹1,000',fontSize: 12,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor),
                      Poppins('₹800',fontSize: 12,fontWeight: FontWeight.w700,color: Get.theme.primaryColor)
                    ],)
                  ],)
                ],),),




              SizedBox(height: 25,),
              Poppins('Track Order',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor),
              SizedBox(height: 15,),
              Container(
                decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xFFF3F5E4) ) ,
                child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                    child: Poppins('Order Id #24FG-FF45-SD45-\nDKSF-4DHS',fontSize: 12,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor)
                  ),
                    SizedBox(height: 40,
                      child:   SmartStepper(
                        currentStepColor: Colors.grey,
                        lineWidth: 130,
                        currentStep: int.parse(widget.step.toString()),
                        totalSteps: 3,
                        isTextShowing: false,
                        borderWidth: 10,currentBorderColor: Get.theme.primaryColor, completeBorderColor: Get.theme.primaryColor,stepHeight: 20,stepWidth: 20,
                        completeStepColor: Get.theme.primaryColor,
                        inactiveBorderColor: Colors.grey,
                        lineHeight: 3,
                        onStepperTap: (value) {

                        },
                      ),),
                    Padding(
                      padding: const EdgeInsets.only(top: 0,right: 10,left: 10,bottom: 20),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Poppins('Order \nPlaced',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.primaryColor),
                        Poppins('Out of\n Delivery ',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.primaryColor),
                        Poppins('Order \nPlaced',fontSize: 12,fontWeight: FontWeight.w500,color: Get.theme.primaryColor)
                      ],),
                    )
                ],),)



            ],



          )

        );
  }
}