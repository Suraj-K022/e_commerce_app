import 'package:e_commerce_app/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:e_commerce_app/custom_widgets/custom_wishlist_card.dart';
import 'package:e_commerce_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WishlistScreen extends StatelessWidget {
  final bool? backButton;

  const WishlistScreen({super.key, this.backButton});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        leading:backButton==false?SizedBox(): InkWell(
            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back,color: Colors.black,)),
        title: Poppins('Wishlist',
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Get.theme.secondaryHeaderColor),
        
      ),
      body: GridView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 10,
            childAspectRatio: 1 / 1.5),
        children: [
          CustomWishlistCard(
            imageUrl: images.womenwearslide1,
            titleText: 'Kurta & Pants Set',
            dynamicText1: '₹1,000',
            dynamicText2: '₹800',
            star: '3.5',
            text: '-20%',
          ),
          CustomWishlistCard(
              imageUrl: images.watch,
              titleText: 'Rolex',
              dynamicText1: '₹1,000',
              dynamicText2: '₹800',
              star: '3.5',
              text: '-20%'),
          CustomWishlistCard(
              imageUrl: images.headphone,
              titleText: 'Head Set',
              dynamicText1: '₹1,000',
              dynamicText2: '₹800',
              star: '3.5',
              text: '-20%'),
          CustomWishlistCard(
              imageUrl: images.kidswear,
              titleText: 'Kurta & Pants Set',
              dynamicText1: '₹1,000',
              dynamicText2: '₹800',
              star: '3.5',
              text: '-20%'),
        ],
      ),
    );
  }
}
