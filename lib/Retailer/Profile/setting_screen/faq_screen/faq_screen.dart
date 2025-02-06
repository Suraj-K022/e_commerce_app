import 'package:e_commerce_app/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:e_commerce_app/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FaqScreen extends StatefulWidget{
  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {

  @override
  Widget build(BuildContext context) {
    return
        Scaffold(backgroundColor: Get.theme.scaffoldBackgroundColor,
          appBar: CustomAppBar(title: 'FAQs'),
          body:ListView(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 24),
            children: [



              Container(height: 46,decoration: BoxDecoration(color: Get.theme.cardColor,border: Border.all(width: 1,color: Colors.white),borderRadius: BorderRadius.circular(8)),
                child: Center(child: Row(mainAxisAlignment: MainAxisAlignment.center,spacing: 5,
                children: [
                  Poppins('FAQ\'s',fontSize: 20,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                  SizedBox(height: 24,width: 24,child: Image.asset(images.question),)

                ],
              ),),),
              SizedBox(height: 10,),
              
              
              ExpansionTile(iconColor:Get.theme.secondaryHeaderColor,collapsedIconColor:Get.theme.secondaryHeaderColor,title:
              Poppins('It is a long established fact that a reader?',fontSize: 14,fontWeight: FontWeight.w500,maxLines: 2,color: Get.theme.secondaryHeaderColor),
                children: [
                  Text('Products that provide a great experience (e.g., the iPhone) are thus designed with the product’s consumption or use in mind and the entire process of acquiring, owning and even  Similarly, UX designers don’t just focus on creating usable products but on other aspects of the user experience, such as pleasure, efficiency and fun. Consequently, there is no single definition of a good user experience. Instead, a good experience meets a particular user’s needs in the specific context where they use the product. A UX designer attempts to answer the question: "How can we make the experience of interacting with a computer, a smartphone, a product, or a service as intuitive, smooth and pleasant as possible?',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor),)
                  ,SizedBox(height: 10,),
              ],),


              ExpansionTile(iconColor:Get.theme.secondaryHeaderColor,collapsedIconColor:Get.theme.secondaryHeaderColor,title:
              Poppins('It is a long established fact that a reader?',fontSize: 14,fontWeight: FontWeight.w500,maxLines: 2,color: Get.theme.secondaryHeaderColor),
                children: [
                  Text('Products that provide a great experience (e.g., the iPhone) are thus designed with the product’s consumption or use in mind and the entire process of acquiring, owning and even  Similarly, UX designers don’t just focus on creating usable products but on other aspects of the user experience, such as pleasure, efficiency and fun. Consequently, there is no single definition of a good user experience. Instead, a good experience meets a particular user’s needs in the specific context where they use the product. A UX designer attempts to answer the question: "How can we make the experience of interacting with a computer, a smartphone, a product, or a service as intuitive, smooth and pleasant as possible?',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor),)
                  ,SizedBox(height: 10,),
                ],),
              ExpansionTile(iconColor:Get.theme.secondaryHeaderColor,collapsedIconColor:Get.theme.secondaryHeaderColor,title:
              Poppins('It is a long established fact that a reader?',maxLines: 2,fontSize: 14,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor),
                children: [
                  Text('Products that provide a great experience (e.g., the iPhone) are thus designed with the product’s consumption or use in mind and the entire process of acquiring, owning and even  Similarly, UX designers don’t just focus on creating usable products but on other aspects of the user experience, such as pleasure, efficiency and fun. Consequently, there is no single definition of a good user experience. Instead, a good experience meets a particular user’s needs in the specific context where they use the product. A UX designer attempts to answer the question: "How can we make the experience of interacting with a computer, a smartphone, a product, or a service as intuitive, smooth and pleasant as possible?',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor),)
                  ,SizedBox(height: 10,),
                ],),
              ExpansionTile(iconColor:Get.theme.secondaryHeaderColor,collapsedIconColor:Get.theme.secondaryHeaderColor,title:
              Poppins('It is a long established fact that a reader?',maxLines: 2,fontSize: 14,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor),
                children: [
                  Text('Products that provide a great experience (e.g., the iPhone) are thus designed with the product’s consumption or use in mind and the entire process of acquiring, owning and even  Similarly, UX designers don’t just focus on creating usable products but on other aspects of the user experience, such as pleasure, efficiency and fun. Consequently, there is no single definition of a good user experience. Instead, a good experience meets a particular user’s needs in the specific context where they use the product. A UX designer attempts to answer the question: "How can we make the experience of interacting with a computer, a smartphone, a product, or a service as intuitive, smooth and pleasant as possible?',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor),)
                  ,SizedBox(height: 10,),
                ],),
              ExpansionTile(iconColor:Get.theme.secondaryHeaderColor,collapsedIconColor:Get.theme.secondaryHeaderColor,title:
              Poppins('It is a long established fact that a reader?',maxLines: 2,fontSize: 14,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor),
                children: [
                  Text('Products that provide a great experience (e.g., the iPhone) are thus designed with the product’s consumption or use in mind and the entire process of acquiring, owning and even  Similarly, UX designers don’t just focus on creating usable products but on other aspects of the user experience, such as pleasure, efficiency and fun. Consequently, there is no single definition of a good user experience. Instead, a good experience meets a particular user’s needs in the specific context where they use the product. A UX designer attempts to answer the question: "How can we make the experience of interacting with a computer, a smartphone, a product, or a service as intuitive, smooth and pleasant as possible?',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor),)
                  ,SizedBox(height: 10,),
                ],),

              



            ],
          ),
        );
  }
}