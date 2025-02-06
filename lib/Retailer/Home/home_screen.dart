import 'package:e_commerce_app/Retailer/Home/Cart_screen/cart_screen.dart';
import 'package:e_commerce_app/Retailer/Home/category_detail_screen/category_detail_screen.dart';
import 'package:e_commerce_app/Retailer/Home/flash_sale_screen/flash_sale_screen.dart';
import 'package:e_commerce_app/Retailer/Home/new_arrivals_screen/new_arrival_screen.dart';
import 'package:e_commerce_app/Retailer/Home/notification_screen/notification_screen.dart';
import 'package:e_commerce_app/Retailer/Home/product_detail_screen/product_detail_screen.dart';
import 'package:e_commerce_app/Retailer/Home/shop_by_category_screen/shop_by_category_screen.dart';
import 'package:e_commerce_app/Retailer/Home/update_details/update_details_screen.dart';
import 'package:e_commerce_app/custom_widgets/custom_card.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:e_commerce_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: Get.theme.scaffoldBackgroundColor,
        appBar: AppBar(titleSpacing: 24,backgroundColor:  Get.theme.scaffoldBackgroundColor,surfaceTintColor:  Get.theme.scaffoldBackgroundColor,
          automaticallyImplyLeading: false, // Removes the default leading icon
          title: InkWell(onTap: (){Get.to(UpdateDetailsScreen());},child: CircleAvatar(radius: 22,backgroundImage: AssetImage('assets/icons/profilepic.png'),)),
          actions: [
            Container(height: 24, width: 24, child: InkWell(onTap: (){Get.to(NotificationScreen());},child: Image.asset(images.notification)),),
            SizedBox(width: 12), // Spacing between icons
            Container(height: 24, width: 24, child: InkWell(onTap: (){Get.to(CartScreen());},child: Image.asset(images.cart))),
            SizedBox(width: 24), // Right padding
          ],
        ),


body: ListView(padding: EdgeInsets.symmetric(horizontal: 24),
  children: [
    //carousel//

SizedBox(height: 20,),

    SingleChildScrollView(scrollDirection: Axis.horizontal,physics: BouncingScrollPhysics(),
      child: Row(spacing: 16,mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 150 ,width: 342,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),),child: Image.asset(images.banner1,fit: BoxFit.cover,),),
          Container(height: 150 ,width: 342,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),child: Image.asset(images.banner2,fit: BoxFit.cover,)),
          Container(height: 150 ,width: 342,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),child: Image.asset(images.banner3,fit: BoxFit.cover,)),


      ],),
    ),


    //shopByCategory//
    SizedBox(height: 20,),
    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,children: [
      Poppins('Shop By Categories',fontWeight: FontWeight.w600,fontSize: 20,color: Get.theme.secondaryHeaderColor,),
      InkWell(onTap: (){Get.to(ShopByCategoryScreen());},child: Poppins('View All',fontSize: 12,fontWeight: FontWeight.w600,color: Get.theme.primaryColor,decoration: TextDecoration.underline,decorationColor: Get.theme.primaryColor,))
    ],),
    SizedBox(height: 10,),

    GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisSpacing: 16,mainAxisSpacing: 10,childAspectRatio: 1/1.7,crossAxisCount: 2),physics: NeverScrollableScrollPhysics(),shrinkWrap: true,
      children: [
        InkWell(onTap: (){Get.to(CategoryDetailScreen());},child: Container(color:Get.theme.cardColor,padding: EdgeInsets.symmetric(vertical: 12,horizontal: 10), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: 184,child: Image.asset('assets/images/image1.png',fit: BoxFit.cover,),), SizedBox(height: 8,), Poppins('Women’s Ethnic Wear',color: Colors.black,fontSize: 12,fontWeight: FontWeight.w500,),SizedBox(height: 5,), Poppins('40-70% OFF',color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700,),SizedBox(height: 5,), Poppins('Shop Now',color: Get.theme.primaryColor,fontSize: 12,fontWeight: FontWeight.w600,),],),)),
        InkWell(onTap: (){Get.to(CategoryDetailScreen());},child: Container(color: Get.theme.cardColor, padding: EdgeInsets.symmetric(vertical: 12,horizontal: 10), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: 184,child: Image.asset('assets/images/image2.png',fit: BoxFit.cover),), SizedBox(height: 8,), Poppins('Women’s Ethnic Wear',color: Colors.black,fontSize: 12,fontWeight: FontWeight.w500,),SizedBox(height: 5,), Poppins('40-70% OFF',color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700,),SizedBox(height: 5,), Poppins('Shop Now',color: Get.theme.primaryColor,fontSize: 12,fontWeight: FontWeight.w600,),],),)),
        InkWell(onTap: (){Get.to(CategoryDetailScreen());},child: Container(color: Get.theme.cardColor,padding: EdgeInsets.symmetric(vertical: 12,horizontal: 10), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: 184,child: Image.asset('assets/images/image4.png',fit: BoxFit.cover),), SizedBox(height: 8,), Poppins('Women’s Ethnic Wear',color: Colors.black,fontSize: 12,fontWeight: FontWeight.w500,),SizedBox(height: 5,), Poppins('40-70% OFF',color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700,),SizedBox(height: 5,), Poppins('Shop Now',color: Get.theme.primaryColor,fontSize: 12,fontWeight: FontWeight.w600,),],),)),
        InkWell(onTap: (){Get.to(CategoryDetailScreen());},child: Container(color: Get.theme.cardColor,padding: EdgeInsets.symmetric(vertical: 12,horizontal: 10), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: 184,child: Image.asset('assets/images/image3.png',fit: BoxFit.cover),), SizedBox(height: 8,), Poppins('Women’s Ethnic Wear',color: Colors.black,fontSize: 12,fontWeight: FontWeight.w500,),SizedBox(height: 5,), Poppins('40-70% OFF',color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700,),SizedBox(height: 5,), Poppins('Shop Now',color: Get.theme.primaryColor,fontSize: 12,fontWeight: FontWeight.w600,),],),)),



      ],),




    //NewArrivals//
    SizedBox(height: 10,),
    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,children: [
      Poppins('New Arrivals',fontWeight: FontWeight.w600,fontSize: 20,color: Get.theme.secondaryHeaderColor,),
      InkWell(onTap: (){Get.to(NewArrivalScreen());},child: Poppins('View All',fontSize: 12,fontWeight: FontWeight.w600,color: Get.theme.primaryColor,decoration: TextDecoration.underline,decorationColor: Get.theme.primaryColor,))
    ],),
    SizedBox(height: 20,),
    
    
    
    GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.4,crossAxisSpacing: 5,mainAxisSpacing: 5),physics: NeverScrollableScrollPhysics(),shrinkWrap: true,children: [
      InkWell(onTap: (){Get.to(ProductDetailScreen());},child: CustomCard(imageUrl: 'assets/images/image5.png', titleText: 'Puma BackPack', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5')),
      InkWell(onTap: (){Get.to(ProductDetailScreen());},child: CustomCard(imageUrl: 'assets/images/image6.png', titleText: 'Bomber Jacket', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5')),
      InkWell(onTap: (){Get.to(ProductDetailScreen());},child: CustomCard(imageUrl: 'assets/images/image7.png', titleText: 'Puma Blut Tshirt', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5')),
      InkWell(onTap: (){Get.to(ProductDetailScreen());},child: CustomCard(imageUrl: 'assets/images/image8.png', titleText: 'Vintage Script Tshirt', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5')),
    ],)

    
    







    //FlashSale//


,
    SizedBox(height: 10,),
    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,children: [
      Poppins('Flash Sale',fontWeight: FontWeight.w600,fontSize: 20,color: Get.theme.secondaryHeaderColor,),
      InkWell(onTap: (){Get.to(FlashSaleScreen());},child: Poppins('View All',fontSize: 12,fontWeight: FontWeight.w600,color: Get.theme.primaryColor,decoration: TextDecoration.underline,decorationColor: Get.theme.primaryColor,))
    ],),
    SizedBox(height: 20,),


    GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.3,crossAxisSpacing: 16,mainAxisSpacing: 16),physics: NeverScrollableScrollPhysics(),shrinkWrap: true,children: [
      InkWell(onTap: (){Get.to(ProductDetailScreen());},child: CustomCard(imageUrl: 'assets/images/image9.png', titleText: 'Puma BackPack', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5',text: '-20%',)),
      InkWell(onTap: (){Get.to(ProductDetailScreen());},child: CustomCard(imageUrl: 'assets/images/image10.png', titleText: 'Bomber Jacket', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5',text: '-20%',)),
      InkWell(onTap: (){Get.to(ProductDetailScreen());},child: CustomCard(imageUrl: 'assets/images/image11.png', titleText: 'Puma Blue Tshirt', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5',text: '-20%',)),
      InkWell(onTap: (){Get.to(ProductDetailScreen());},child: CustomCard(imageUrl: 'assets/images/image12.png', titleText: 'Vintage Script Tshirt', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5',text: '-20%',)),
    ],),



SizedBox(height: 20,),











  ],
)
        ,

      ),
    );
  }
}
