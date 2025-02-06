
import 'package:e_commerce_app/Retailer/Profile/setting_screen/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:e_commerce_app/Retailer/Profile/setting_screen/term_and_condition_screen/term_and_condition_screen.dart';
import 'package:e_commerce_app/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:e_commerce_app/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../custom_widgets/custom_switch.dart';
import 'about_screen/about_screen.dart';
import 'change_password_screen/change_password_screen.dart';
import 'faq_screen/faq_screen.dart';
import 'help_center_screen/help_center_screen.dart';

class SettingScreen  extends StatefulWidget{
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override


  Widget build(BuildContext context) {
    return
        Scaffold(backgroundColor: Get.theme.scaffoldBackgroundColor, 
appBar: CustomAppBar(title: 'Setting'),
          body: ListView(padding: EdgeInsets.symmetric(horizontal: 24),

            children: [
              InkWell(onTap: (){Get.to(ChangePasswordScreen());},
                child: ListTile(
                  leading: Container(height: 24,width: 24,child: Image.asset(images.ic1,fit: BoxFit.cover,color: Get.theme.secondaryHeaderColor),),
                  title: Poppins('Password',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                  subtitle: Poppins('Update Password',fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey,),
                  trailing: Container(height: 40,width: 30,child: Center(child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 24,),),),
                ),
              ),
Divider(color: Colors.grey,height: 0,thickness: 1,),

              ListTile(
                leading: Container(height: 24,width: 24,child: Image.asset(images.ic2,fit: BoxFit.cover,color: Get.theme.secondaryHeaderColor,),),

                title: Poppins('Theme',fontSize: 16,fontWeight: FontWeight.w500,color:Get.theme.secondaryHeaderColor),
                subtitle: Poppins('Choose Between Light & dark mode',fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey,),
                trailing: CustomSwitch('L'),
              ),



              Divider(color: Colors.grey,height: 0,thickness: 1,),

              ListTile(
                leading: Container(height: 30,width: 24,child: Image.asset(images.ic3,fit: BoxFit.cover,),),

                title: Poppins('Notification',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor),
                subtitle: Poppins('Mute Notification',fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey,),
                trailing: OnCustomSwitch(),

              ),




              Divider(color: Colors.grey,height: 0,thickness: 1,),

              InkWell(onTap: (){Get.to(FaqScreen());},
                child: ListTile(
                  leading: Container(height: 24,width: 24,child: Image.asset(images.ic4,fit: BoxFit.cover,color: Get.theme.secondaryHeaderColor),),

                  title: Poppins('FAQs',fontSize: 16,fontWeight: FontWeight.w500,color:Get.theme.secondaryHeaderColor),
                  subtitle: Poppins('Choose Language : English',fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),
                  trailing: Container(height: 40,width: 30,child: Center(child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 24,),),),
                ),
              ),




              Divider(color: Colors.grey,height: 0,thickness: 1,),

              InkWell(onTap: (){Get.to(AboutScreen());},
                child: ListTile(
                  leading: Container(height: 24,width: 24,child: Image.asset(images.ic5,fit: BoxFit.cover,color: Get.theme.secondaryHeaderColor),),
                
                  title: Poppins('About',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                  subtitle: Poppins('Choose Language : English',fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey,),
                  trailing: Container(height: 40,width: 30,child: Center(child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 24,),),),
                ),
              ),




              Divider(color: Colors.grey,height: 0,thickness: 1,),

              InkWell(onTap: () {
               Get.to( TermConditionScreen());
              },
                child: ListTile(
                  leading: Container(height: 24,width: 24,child: Image.asset(images.ic6,fit: BoxFit.cover,color: Get.theme.secondaryHeaderColor),),
                
                  title: Poppins('Terms & Condition',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                  subtitle: Poppins('Choose Language : English',fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),
                  trailing: Container(height: 40,width: 30,child: Center(child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 24,),),),
                ),
              ),



              Divider(color: Colors.grey,height: 0,thickness: 1,),

              InkWell(onTap: () {
                Get.to(PrivacyPolicyScreen());

              },
                child: ListTile(
                  leading: Container(height: 24,width: 24,child: Image.asset(images.ic7,fit: BoxFit.cover,color: Get.theme.secondaryHeaderColor),),

                  title: Poppins('Privacy Policy',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                  subtitle: Poppins('Choose Language : English',fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey,),
                  trailing: Container(height: 40,width: 30,child: Center(child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 24,),),),
                ),
              ),



              Divider(color: Colors.grey,height: 0,thickness: 1,),

              InkWell(onTap: (){Get.to(HelpCenterScreen());},
                child: ListTile(
                  leading: Container(height: 24,width: 24,child: Image.asset(images.ic8,fit: BoxFit.cover,color: Get.theme.secondaryHeaderColor),),
                
                  title: Poppins('Help Center',fontSize: 16,fontWeight: FontWeight.w500,color:Get.theme.secondaryHeaderColor,),
                  subtitle: Poppins('Choose Language : English',fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey,),
                  trailing: Container(height: 40,width: 30,child: Center(child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 24,),),),
                ),
              ),
            ],
          )
          ,);

  }
}