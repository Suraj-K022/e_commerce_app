import 'package:e_commerce_app/Retailer/Home/category_detail_screen/filter_screen/filter_screen.dart';
import 'package:e_commerce_app/Retailer/Home/product_detail_screen/product_detail_screen.dart';
import 'package:e_commerce_app/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../custom_widgets/custom_card.dart';

class CategoryDetailScreen extends StatelessWidget {
  const CategoryDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Get.theme.scaffoldBackgroundColor,
      appBar: CustomAppBar(title: 'Women’s Ethnic Wear',action: Container(height: 24,width: 24,child: InkWell(onTap: (){Get.to(FilterScreen());},child: Image.asset(images.filter,fit: BoxFit.cover,)),margin: EdgeInsets.only(right: 24),),),
      body:


        GridView(
          
          padding: EdgeInsets.all(24),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.3,crossAxisSpacing: 16,mainAxisSpacing: 16),physics: BouncingScrollPhysics(),shrinkWrap: true,children: [
          InkWell(onTap: (){Get.to(ProductDetailScreen());},child: CustomCard(imageUrl: images.womenwear1, titleText: 'Blue Western Dress', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5',text: '-20%',)),
          InkWell(onTap: (){Get.to(ProductDetailScreen());},child: CustomCard(imageUrl: images.womenwear2, titleText: 'Kurta & Pants Set', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5',text: '-20%',)),
          InkWell(onTap: (){Get.to(ProductDetailScreen());},child: CustomCard(imageUrl: images.womenwear3, titleText: 'Ankle-Length Leggings', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5',text: '-20%',)),
          InkWell(onTap: (){Get.to(ProductDetailScreen());},child: CustomCard(imageUrl:images.womenwear4, titleText: 'Floral Kurta with Dupatta', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5',text: '-20%',)),
          CustomCard(imageUrl: images.womenwear5, titleText: 'Embroidered Flared Kurta', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5',text: '-20%',),
          CustomCard(imageUrl: images.womenwear6, titleText: 'Saree with Zari Accent', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5',text: '-20%',),
          CustomCard(imageUrl:images.womenwear7, titleText: 'Vintage Script Tshirt', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5',text: '-20%',),
          CustomCard(imageUrl: images.womenwear8, titleText: 'Vintage Script Tshirt', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5',text: '-20%',),
          CustomCard(imageUrl: images.womenwear1, titleText: 'Blue Western Dress', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5',text: '-20%',),
          CustomCard(imageUrl: images.womenwear2, titleText: 'Kurta & Pants Set', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5',text: '-20%',),
          CustomCard(imageUrl: images.womenwear3, titleText: 'Ankle-Length Leggings', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5',text: '-20%',),
          CustomCard(imageUrl:images.womenwear4, titleText: 'Floral Kurta with Dupatta', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5',text: '-20%',),
          CustomCard(imageUrl: images.womenwear5, titleText: 'Embroidered Flared Kurta', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5',text: '-20%',),
          CustomCard(imageUrl: images.womenwear6, titleText: 'Saree with Zari Accent', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5',text: '-20%',),
          CustomCard(imageUrl:images.womenwear7, titleText: 'Vintage Script Tshirt', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5',text: '-20%',),
          CustomCard(imageUrl: images.womenwear8, titleText: 'Vintage Script Tshirt', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5',text: '-20%',),

        ],)
        


    );
  }
}
