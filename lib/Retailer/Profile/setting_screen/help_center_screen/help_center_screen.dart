import 'package:e_commerce_app/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:e_commerce_app/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpCenterScreen extends StatefulWidget{
  @override
  State<HelpCenterScreen> createState() => _HelpCenterScreen();
}

class _HelpCenterScreen extends State<HelpCenterScreen> {

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(backgroundColor: Get.theme.scaffoldBackgroundColor,
        floatingActionButton: CircleAvatar(backgroundColor: Get.theme.cardColor,radius: 30,child: Image.asset(images.helpcenter,color: Get.theme.secondaryHeaderColor,height: 30,width: 30,),),
        appBar: CustomAppBar(title: 'Help Center'),
        body:ListView(padding: EdgeInsets.symmetric(horizontal: 24,vertical: 10),
          children: [


            Container(padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(35),border: Border.all(color:Get.theme.primaryColor,width: 1)),child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Poppins('How can I help you',fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey),
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Get.theme.primaryColor),padding: EdgeInsets.symmetric(horizontal: 30,vertical: 7),child: Center(child: Text('Send'),),)
                
              ],
            ),
            ),
            SizedBox(height: 20,),


            Poppins('Products that provide a great experience (e.g., the iPhone) are thus designed with the product’s consumption or use in mind and the entire process of acquiring, owning and even  Similarly, UX designers don’t just focus on creating usable products but on other aspects of the user experience, such as pleasure, efficiency and fun. Consequently, there is no single definition of a good user experience. Instead, a good experience meets a particular user’s needs in the specific context where they use the product. ',fontSize: 16,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor,maxLines: 100,),
            SizedBox(height: 10,),
            Poppins('A UX designer attempts to answer the question: "How can we make the experience of interacting with a computer, a smartphone, a product, or a service as intuitive, smooth and pleasant as possible? ',fontSize: 16,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor,maxLines: 100,),





          ],
        ),
      );
  }
}