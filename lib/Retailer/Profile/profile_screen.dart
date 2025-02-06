import 'package:e_commerce_app/Retailer/Home/wishlist_screen/wishlist_screen.dart';
import 'package:e_commerce_app/Retailer/Profile/coupon_screen/coupon_screen.dart';
import 'package:e_commerce_app/Retailer/Profile/earn_and_redeem_screen/earn_and_redeem_screen.dart';
import 'package:e_commerce_app/Retailer/Profile/manage_account_screen/manage_account_screen.dart';
import 'package:e_commerce_app/Retailer/Profile/my_order_screen/my_order_screen.dart';
import 'package:e_commerce_app/Retailer/Profile/setting_screen/setting_screen.dart';
import 'package:e_commerce_app/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:e_commerce_app/custom_widgets/custom_wishlist_card.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:e_commerce_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../authorisation_screens/login_screen/login_screen.dart';

class ProfileScreen extends StatelessWidget {
  final bool? backButton;

  const ProfileScreen({super.key, this.backButton});

  @override
  Widget build(BuildContext context) {
    // Controller for the search bar
    final TextEditingController searchController = TextEditingController();

    return Scaffold(backgroundColor: Get.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        leading: backButton == true ? SizedBox() : InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: Poppins('Profile', fontSize: 16, fontWeight: FontWeight.w500, color: Get.theme.secondaryHeaderColor),
      ),
      body:ListView(padding: EdgeInsets.symmetric(horizontal: 24,),
        children: [


          Container(height: 82,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Get.theme.cardColor),padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(spacing: 15,mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(radius: 30,backgroundColor: Colors.red,child: ClipRRect(borderRadius: BorderRadius.circular(50),child: Image.asset(images.profilepic1)),),
                Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Poppins('Mayur Soni',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,fontSize: 18),
                    Poppins('mayursoni@gmail.com',color:  Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w400,fontSize: 14),
                  ],)
              ],),),



          Divider(color: Colors.grey[300],height: 5,thickness: 1,),


          InkWell(onTap: (){Get.to(ManageAccountScreen());},
            child: ListTile(
              title: Poppins('Manage Account',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor),
              subtitle: Poppins('Manage your account & save address',fontWeight: FontWeight.w400,fontSize: 12,color: Colors.grey),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 20,color:Colors.grey,),contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
          Divider(color: Colors.grey[300],height: 5,thickness: 1,),
          InkWell(onTap: (){Get.to(MyOrderScreen());},
            child: ListTile(
              title: Poppins('My orders',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor),
              subtitle: Poppins('Already have 12 orders',fontWeight: FontWeight.w400,fontSize: 12,color: Colors.grey),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 20,color:Colors.grey,),contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
          Divider(color: Colors.grey[300],height: 5,thickness: 1,),
          InkWell(onTap: (){Get.to(WishlistScreen());},
            child: ListTile(
              title: Poppins('Wishlist',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor),
              subtitle: Poppins('See your wishlist',fontWeight: FontWeight.w400,fontSize: 12,color: Colors.grey),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 20,color:Colors.grey,),contentPadding: EdgeInsets.symmetric(horizontal:10),
            ),
          ),
          Divider(color: Colors.grey[300],height: 5,thickness: 1,),
          InkWell(onTap: (){Get.to(CouponScreen());},
            child: ListTile(
              title: Poppins('Coupon ',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor),
              subtitle: Poppins('Apply coupon',fontWeight: FontWeight.w400,fontSize: 12,color: Colors.grey),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 20,color:Colors.grey,),contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
          Divider(color: Colors.grey[300],height: 5,thickness: 1,),
          InkWell(onTap: (){Get.to(EarnAndRedeemScreen());},
            child: ListTile(
              title: Poppins('Earn & Redeem  ',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor),
              subtitle: Poppins('Scan coupons, view prizes and earn rewards',fontWeight: FontWeight.w400,fontSize: 12,color: Colors.grey),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 20,color:Colors.grey,),contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
          Divider(color: Colors.grey[300],height: 5,thickness: 1,),
          InkWell(onTap: (){Get.to(SettingScreen());},
            child: ListTile(
              title: Poppins('Setting ',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor),
              subtitle: Poppins('Manage notification & Password',fontWeight: FontWeight.w400,fontSize: 12,color: Colors.grey),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 20,color:Colors.grey,),contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
          Divider(color: Colors.grey[300],height: 5,thickness: 1,),
          InkWell(onTap: (){



            showDialog(context: context, builder: (context) {
              return
                AlertDialog(contentPadding: EdgeInsets.symmetric(horizontal: 40,vertical: 24),backgroundColor: Get.theme.cardColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  title: Poppins('Are you sure you want to logout?',textAlign: TextAlign.center,fontWeight: FontWeight.w500,fontSize: 20,color: Get.theme.secondaryHeaderColor,maxLines: 10,),
                  content: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,spacing: 20,
                    children: [
                      Expanded(child: InkWell(onTap: (){Get.offAll(LoginScreen(type: 'Retailer',));},child: Container(height: 38,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Get.theme.primaryColor),child: Center(child: Poppins('Yes',fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500),),),)),
                      Expanded(child: InkWell(onTap: (){Get.back();},child: Container(height: 38,decoration: BoxDecoration(border: Border.all(color:Get.theme.primaryColor,width: 1),borderRadius: BorderRadius.circular(5),color: Get.theme.cardColor),child: Center(child: Poppins('No',fontSize: 20,color: Get.theme.primaryColor,fontWeight: FontWeight.w500),),),)),

                    ],
                  ),






                );

            },);


          },
            child: ListTile(
              title: Poppins('Logout',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor),
              subtitle: Poppins('Secure account  ',fontWeight: FontWeight.w400,fontSize: 12,color: Colors.grey),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 20,color:Colors.grey,),contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
          Divider(color: Colors.grey[300],height: 5,thickness: 1,),



        ],
      )
    );
  }
}

