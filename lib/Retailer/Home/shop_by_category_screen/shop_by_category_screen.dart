import 'package:e_commerce_app/Retailer/Home/category_detail_screen/category_detail_screen.dart';
import 'package:e_commerce_app/Retailer/Home/product_detail_screen/product_detail_screen.dart';
import 'package:e_commerce_app/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_app/custom_widgets/custom_discount_card.dart';
import 'package:e_commerce_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopByCategoryScreen extends StatelessWidget {
  const ShopByCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: CustomAppBar(title: 'Shop By Categories'),
    body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.7,crossAxisSpacing: 10,mainAxisSpacing: 10),padding: EdgeInsets.symmetric(horizontal: 24),scrollDirection: Axis.vertical,physics: BouncingScrollPhysics(),shrinkWrap: true,
      children: [
        InkWell(onTap: (){Get.to(CategoryDetailScreen());},child: CustomDiscountCard(imageUrl:images.categoryimg1, title: 'Women’s Ethnic Wear', discount: '40-70% OFF', buttonText: 'Shop Now', onTap:(){})),
        InkWell(onTap: (){Get.to(CategoryDetailScreen());},child: CustomDiscountCard(imageUrl:images.categoryimg2, title: 'Men\'s Casualwear', discount: '40-70% OFF', buttonText: 'Shop Now', onTap:(){})),
        InkWell(onTap: (){Get.to(CategoryDetailScreen());},child: CustomDiscountCard(imageUrl:images.greytshirtmen, title: 'Sport Wear', discount: '40-70% OFF', buttonText: 'Shop Now', onTap:(){})),
        InkWell(onTap: (){Get.to(CategoryDetailScreen());},child: CustomDiscountCard(imageUrl:images.watch, title: 'Men\'s Watch', discount: '40-70% OFF', buttonText: 'Shop Now', onTap:(){})),
        CustomDiscountCard(imageUrl:images.jockey, title: 'Inner Wear', discount: '40-70% OFF', buttonText: 'Shop Now', onTap:(){}),
        CustomDiscountCard(imageUrl:images.cosmetics, title: 'Grooming', discount: '40-70% OFF', buttonText: 'Shop Now', onTap:(){}),
        CustomDiscountCard(imageUrl:images.suit, title: 'Office Wear', discount: '40-70% OFF', buttonText: 'Shop Now', onTap:(){}),
        CustomDiscountCard(imageUrl:images.handbag, title: 'Bag,Belt& Wallet', discount: '40-70% OFF', buttonText: 'Shop Now', onTap:(){}),
        CustomDiscountCard(imageUrl:images.mensfootwear, title: 'Men\'s Footwear', discount: '40-70% OFF', buttonText: 'Shop Now', onTap:(){}),
        CustomDiscountCard(imageUrl:images.sleepwear, title: 'Sleep Wear', discount: '40-70% OFF', buttonText: 'Shop Now', onTap:(){}),
        CustomDiscountCard(imageUrl:images.womensfootwear, title: 'Women\'s Footwear', discount: '40-70% OFF', buttonText: 'Shop Now', onTap:(){}),
        CustomDiscountCard(imageUrl:images.kidswear, title: 'Kid\'s Wear', discount: '40-70% OFF', buttonText: 'Shop Now', onTap:(){}),
        CustomDiscountCard(imageUrl:images.redhandbag, title: 'Women’s Ethnic Wear', discount: '40-70% OFF', buttonText: 'Shop Now', onTap:(){}),
        CustomDiscountCard(imageUrl:images.spectacle, title: 'Eye Wear', discount: '40-70% OFF', buttonText: 'Shop Now', onTap:(){}),
        CustomDiscountCard(imageUrl:images.headphone, title: 'Head Phones', discount: '40-70% OFF', buttonText: 'Shop Now', onTap:(){}),
        CustomDiscountCard(imageUrl:images.footwear, title: 'Flip Flops', discount: '40-70% OFF', buttonText: 'Shop Now', onTap:(){}),
      ],),);
  }
}
