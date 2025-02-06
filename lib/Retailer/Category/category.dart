import 'package:e_commerce_app/Retailer/Category/category_view/category_view.dart';

import 'package:e_commerce_app/custom_widgets/custom_categoryscreen_widget.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/images.dart';
import '../Home/Cart_screen/cart_screen.dart';


class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Poppins('Categories',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),centerTitle: true,
        backgroundColor:  Get.theme.scaffoldBackgroundColor,
        automaticallyImplyLeading: false, // Removes the default leading icon
        actions: [
          // Spacing between icons
          Container(height: 24, width: 24, child: InkWell(onTap: (){Get.to(CartScreen());},child: Image.asset(images.cart))),
          SizedBox(width: 24), // Right padding
        ],
      ),
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 10,mainAxisSpacing: 10,childAspectRatio: 1/1.3),shrinkWrap: true,physics: NeverScrollableScrollPhysics(),padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          
          
          InkWell(onTap: (){Get.to(CategoryViewScreen());},child: CustomCategoryCard(title: 'Men', imageUrl:images.catimg1,backgroundColor:  Color(0xFFE8B298),)),
          CustomCategoryCard(title: 'Women', imageUrl:images.catimg2,backgroundColor: Color(0xFF7D919A),),
          CustomCategoryCard(title: 'Kids', imageUrl:images.catimg3,backgroundColor: Color(0xFFA0ADBD),),
          CustomCategoryCard(title: 'Beauty & Grooming', imageUrl:images.catimg4,backgroundColor: Color(0xFFC2D9E1),),
          CustomCategoryCard(title: 'Footwear', imageUrl:images.catimg5,backgroundColor: Color(0xFFEECC8C),),
          CustomCategoryCard(title: 'Home & Living', imageUrl:images.catimg6,backgroundColor: Color(0xFFEC9689),),
          CustomCategoryCard(title: 'Accessories', imageUrl:images.catimg7,backgroundColor: Color(0xFFC5A5D4),),
          CustomCategoryCard(title: 'Jewelry', imageUrl:images.catimg8,backgroundColor: Color(0xFFB3DDD1),),
          CustomCategoryCard(title: 'Luggage', imageUrl:images.catimg9,backgroundColor: Color(0xFF829E88),),
          CustomCategoryCard(title: 'Plus Size', imageUrl:images.catimg10,backgroundColor:Color(0xFFD09591),),
          CustomCategoryCard(title: 'Buggy', imageUrl:images.catimg11,backgroundColor: Color(0xFF619495),),
          CustomCategoryCard(title: 'Hip Hop', imageUrl:images.catimg12,backgroundColor: Color(0xFF6D7B84),),


        ],),
    );
  }
}
