import 'package:e_commerce_app/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpSupportScreen extends StatefulWidget{
  @override
  State<HelpSupportScreen> createState() => _HelpSupportScreenState();
}

class _HelpSupportScreenState extends State<HelpSupportScreen> {

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(


        backgroundColor: Get.theme.scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Get.theme.primaryColor,
          titleSpacing: 0,
          centerTitle: true,
          title: Poppins(
            'Help & Support',
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
        body:ListView(padding: EdgeInsets.symmetric(horizontal: 24,vertical: 10),
          children: [


            Poppins('Products that provide a great experience (e.g., the iPhone) are thus designed with the product’s consumption or use in mind and the entire process of acquiring, owning and even  Similarly, UX designers don’t just focus on creating usable products but on other aspects of the user experience, such as pleasure, efficiency and fun. Consequently, there is no single definition of a good user experience. Instead, a good experience meets a particular user’s needs in the specific context where they use the product. ',fontSize: 16,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor,maxLines: 100,),
            SizedBox(height: 10,),
            Poppins('A UX designer attempts to answer the question: "How can we make the experience of interacting with a computer, a smartphone, a product, or a service as intuitive, smooth and pleasant as possible? ',fontSize: 16,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor,maxLines: 100,),





          ],
        ),
      );
  }
}