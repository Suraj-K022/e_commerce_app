import 'package:e_commerce_app/Retailer/Home/Cart_screen/cart_screen.dart';
import 'package:e_commerce_app/Retailer/Home/wishlist_screen/wishlist_screen.dart';
import 'package:e_commerce_app/custom_widgets/custom_card.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:e_commerce_app/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'customer_review_box/customer_review_box.dart';
import 'customer_review_comments/customer_review_comments.dart';
class ProductDetailScreen extends StatefulWidget {
  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  bool isFavorite = false;
  final PageController _pageController = PageController();

  int ?selectsize;
  int selectedimg=0;
  int ?selectcolor;
  int quantity=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      body:
      ListView(

        children: [

          SizedBox(height: Get.height/2+200,
            child: Stack(
              children: [
                PageView(
                  controller: _pageController,
                  children: [
                  ClipRRect(child: Image.asset(images.womenwearslide1,fit: BoxFit.cover,)),
                  ClipRRect(child: Image.asset(images.womenwearslide2,fit: BoxFit.cover,)),
                  ClipRRect(child: Image.asset(images.womenwearslide3,fit: BoxFit.cover,)),
                  ClipRRect(child: Image.asset(images.womenwearslide4,fit: BoxFit.cover,)),


                ],),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 20),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(onTap: (){Get.back();},child: Icon(Icons.arrow_back_ios_rounded,color: Get.theme.secondaryHeaderColor,)),
        InkWell(
          onTap: () {
            setState(() {
              isFavorite = !isFavorite; // Toggle state
            });
          },
          child: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_outlined,
            color: isFavorite ? Get.theme.primaryColor : Colors.grey, // Change color based on state
          ),
        )
                    ],
                  ),
                ),
                // Positioned(height: 24,width: 24,left: 24,right: 24,child:InkWell(onTap: (){Get.back();},child: Icon(Icons.arrow_back_ios_rounded,color: Get.theme.secondaryHeaderColor,))),

              ],
            ),
          ),



          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(alignment: Alignment.center,
                  child: SmoothPageIndicator(
                    controller: _pageController, // PageController
                    count: 4, // Number of pages
                    effect: ExpandingDotsEffect(
                      dotHeight: 8,
                      dotWidth: 8,
                      activeDotColor:Get.theme.primaryColor,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [


                    Roboto('H&M',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w700,fontSize: 20,),

                    Row(crossAxisAlignment: CrossAxisAlignment.center,spacing: 5,children: [Icon(Icons.star,size: 24,color: CupertinoColors.systemYellow,),

                      Roboto('3.5',color: Get.theme.secondaryHeaderColor,fontSize: 14,fontWeight: FontWeight.w500,)




                      ,],)
                  ],
                ),
                SizedBox(height: 5,),


                Roboto('Kurta & Pants Set',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w700,fontSize: 20,),

                SizedBox(height: 5,),



                Row(spacing: 10,
                  children: [
                    Roboto('₹1,000',color:Colors.grey,fontWeight: FontWeight.w700,fontSize: 14,decoration: TextDecoration.lineThrough,decorationColor: Colors.grey,),

                    Roboto('₹800',color:Get.theme.primaryColor,fontWeight: FontWeight.w400,fontSize: 16,),


                  ],),


                SizedBox(height: 10,),


                Roboto('Size',fontSize: 16,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor,),
                SizedBox(height: 5,),


                Row(spacing: 15,
                  children: [
                    InkWell(onTap: (){setState(() {selectsize=0;});},child: CircleAvatar(radius: 20,backgroundColor: selectsize==0?Get.theme.primaryColor:Colors.white,child: Center(child: Text('S',style: GoogleFonts.roboto(color: selectsize==0?Colors.white:Get.theme.primaryColor, fontSize: 18, fontWeight: FontWeight.w500,),),),)),
                    InkWell(onTap: (){setState(() {selectsize=1;});},child: CircleAvatar(radius: 20,backgroundColor:selectsize==1?Get.theme.primaryColor:Colors.white,child: Center(child: Text('M',style: GoogleFonts.roboto(color: selectsize==1?Colors.white:Get.theme.primaryColor, fontSize: 18, fontWeight: FontWeight.w500,),),),)),
                    InkWell(onTap: (){setState(() {selectsize=2;});},child: CircleAvatar(radius: 20,backgroundColor:selectsize==2?Get.theme.primaryColor:Colors.white,child: Center(child: Text('L',style: GoogleFonts.roboto(color: selectsize==2?Colors.white:Get.theme.primaryColor, fontSize: 18, fontWeight: FontWeight.w500,),),),)),
                    InkWell(onTap: (){setState(() {selectsize=3;});},child: CircleAvatar(radius: 20,backgroundColor:selectsize==3?Get.theme.primaryColor:Colors.white,child: Center(child: Text('XL',style: GoogleFonts.roboto(color: selectsize==3?Colors.white:Get.theme.primaryColor, fontSize: 18, fontWeight: FontWeight.w500,),),),)),
                  ],),






                SizedBox(height: 10,),




                Roboto('Color',fontSize: 16,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor,),

                SizedBox(height: 5,),


                Row(spacing: 10,
                  children: [
                    InkWell(onTap: () {setState(() {selectcolor=0;});},child: Container(padding: EdgeInsets.all(3),height: 45,width: 45,decoration: BoxDecoration(border: Border.all(width: 2,color:selectcolor==0? Get.theme.primaryColor:Get.theme.scaffoldBackgroundColor),color: Get.theme.scaffoldBackgroundColor,shape: BoxShape.circle),child: CircleAvatar(backgroundColor: Colors.blue,),)),
                    InkWell(onTap: () {setState(() {selectcolor=1;});},child: Container(padding: EdgeInsets.all(3),height: 45,width: 45,decoration: BoxDecoration(border: Border.all(width: 2,color:selectcolor==1? Get.theme.primaryColor:Get.theme.scaffoldBackgroundColor),color: Get.theme.scaffoldBackgroundColor,shape: BoxShape.circle),child: CircleAvatar(backgroundColor: Colors.grey,),)),
                    InkWell(onTap: () {setState(() {selectcolor=2;});},child: Container(padding: EdgeInsets.all(3),height: 45,width: 45,decoration: BoxDecoration(border: Border.all(width: 2,color:selectcolor==2? Get.theme.primaryColor:Get.theme.scaffoldBackgroundColor),color: Get.theme.scaffoldBackgroundColor,shape: BoxShape.circle),child: CircleAvatar(backgroundColor: Colors.yellow,),)),
                    InkWell(onTap: () {setState(() {selectcolor=3;});},child: Container(padding: EdgeInsets.all(3),height: 45,width: 45,decoration: BoxDecoration(border: Border.all(width: 2,color:selectcolor==3? Get.theme.primaryColor:Get.theme.scaffoldBackgroundColor),color: Get.theme.scaffoldBackgroundColor,shape: BoxShape.circle),child: CircleAvatar(backgroundColor: Colors.purple,),)),
                    InkWell(onTap: () {setState(() {selectcolor=4;});},child: Container(padding: EdgeInsets.all(3),height: 45,width: 45,decoration: BoxDecoration(border: Border.all(width: 2,color:selectcolor==4? Get.theme.primaryColor:Get.theme.scaffoldBackgroundColor),color: Get.theme.scaffoldBackgroundColor,shape: BoxShape.circle),child: CircleAvatar(backgroundColor: Colors.red,),)),

                  ],),



                SizedBox(height: 10,),

















                Roboto('Qty',fontSize: 16,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor,),

                SizedBox(height: 5,),




                Row(mainAxisAlignment: MainAxisAlignment.start,children: [
                  IconButton(onPressed: (){
                    setState(() {

                      if (quantity > 1) quantity--;

                    });
                  }, icon: Icon(Icons.remove,size: 24,color: Get.theme.secondaryHeaderColor,)),
                  Container(decoration: BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(5)
                  ),padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5,),child: Center(
                    child: Text('$quantity',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w600),),),),

                  IconButton(onPressed: (){
                    setState(() {
                      quantity++;
                    });
                  }, icon: Icon(Icons.add,size: 24,color:Get.theme.secondaryHeaderColor,))
                ],),




                SizedBox(height: 20,),
                Row(spacing: 15,mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: InkWell(onTap: (){Get.to(CartScreen());},
                        child: Container(height: 48,decoration: BoxDecoration(color: Get.theme.primaryColor),
                          child: Row(spacing: 10,mainAxisAlignment: MainAxisAlignment.center
                            ,children: [
                              Roboto('Add To Cart',color: Get.theme.scaffoldBackgroundColor,fontWeight: FontWeight.w600,fontSize: 16,),
                              Icon(Icons.shopping_cart_outlined,size: 24,color: Get.theme.scaffoldBackgroundColor,weight: 10, )


                            ],),),
                      ),
                    ),


                    Expanded(
                      child: InkWell(onTap: (){Get.to(WishlistScreen());},
                        child: Container(height: 48,decoration: BoxDecoration(border: Border.all(width: 2,color:Get.theme.primaryColor,),color:Get.theme.scaffoldBackgroundColor),
                          child: Row(spacing: 10,mainAxisAlignment: MainAxisAlignment.center
                            ,children: [
                              Text('WishList',style: GoogleFonts.roboto(color: Get.theme.primaryColor,fontSize: 16,fontWeight: FontWeight.w600)),
                              SizedBox(height: 24,width: 24,child: Icon(Icons.favorite_border_outlined,color: Get.theme.primaryColor,size: 24,),)


                            ],),),
                      ),
                    ),






                  ],),
                SizedBox(height: 20,),
                Poppins('Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w400,fontSize: 14,maxLines: 10,)



                ,
                SizedBox(height: 20,),
                Roboto('Best Offers',fontSize: 18,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor,),


                SizedBox(height: 10,),















                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Best Price : ",
                        style: GoogleFonts.roboto(
                          color: Get.theme.secondaryHeaderColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: "45₹",
                        style: GoogleFonts.roboto(
                          color: Get.theme.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),




                ListTile(dense: true, contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),horizontalTitleGap: 4.0,minTileHeight: 10,
                  leading: Icon(Icons.circle, size: 8, color: Get.theme.secondaryHeaderColor),
                  title: Roboto('Coupon code: Cloth123',fontSize: 14,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor,),


                ),
                ListTile(dense: true, contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),horizontalTitleGap: 4.0,minTileHeight: 10,
                  leading: Icon(Icons.circle, size: 8, color: Get.theme.secondaryHeaderColor),
                  title: Roboto('Coupon Discount: 48₹ off (check cart for final savings)',fontSize: 14,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor,),

                ),
                ListTile(dense: true, contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),horizontalTitleGap: 4.0,minTileHeight: 10,
                  leading: Icon(Icons.circle, size: 8, color: Get.theme.secondaryHeaderColor),
                  title: Roboto('Applicable on: Orders above 60₹ (only on first purchase)',fontSize: 14,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor,),
                ),








                SizedBox(height: 20,),

                Roboto('Product Details',fontWeight: FontWeight.w600,fontSize: 18,color: Get.theme.secondaryHeaderColor,)


                ,


                SizedBox(height: 5,),

                Poppins('This season set a sporty fashion trend with the HRX Men\'s Athleisure T-shirt. This striped casual T-shirt can be worn on its own or layered under a jacket or a hoodie.',fontWeight: FontWeight.w400,fontSize: 14,maxLines: 10,),



                SizedBox(height: 20,),
                Roboto('Features',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w600,fontSize: 14,),

                ListTile(dense: true, contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),horizontalTitleGap: 4.0,minTileHeight: 10,



                  leading: Icon(Icons.circle, size: 8, color: Get.theme.secondaryHeaderColor),
                  title: Roboto('Athleisure T-shirt can be paired with tracks,',fontSize: 14,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor,),

                ),
                ListTile(dense: true, contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),horizontalTitleGap: 4.0,minTileHeight: 10,
                  leading: Icon(Icons.circle, size: 8, color: Get.theme.secondaryHeaderColor),
                  title: Roboto('Style: Round Neck',fontSize: 14,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor,),
                ),
                ListTile(dense: true, contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),horizontalTitleGap: 4.0,minTileHeight: 10,
                  leading: Icon(Icons.circle, size: 8, color: Get.theme.secondaryHeaderColor),
                  title: Roboto('Sleeve: Short Sleeves',fontSize: 14,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor,),
                ),
                ListTile(dense: true, contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),horizontalTitleGap: 4.0,minTileHeight: 10,
                  leading: Icon(Icons.circle, size: 8, color: Get.theme.secondaryHeaderColor),
                  title: Roboto('Colour: Teal,',fontSize: 14,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor,),
                ),
                ListTile(dense: true, contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),horizontalTitleGap: 4.0,minTileHeight: 10,
                  leading: Icon(Icons.circle, size: 8, color: Get.theme.secondaryHeaderColor),
                  title: Roboto('Print: Geometric',fontSize: 14,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor,),
                ),
                ListTile(dense: true, contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),horizontalTitleGap: 4.0,minTileHeight: 10,
                  leading: Icon(Icons.circle, size: 8, color: Get.theme.secondaryHeaderColor),
                  title: Roboto('Fit: Regular',fontSize: 14,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor,),
                ),


                SizedBox(height: 10,),
                Roboto('Size',fontSize: 14,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor,),

                SizedBox(height: 5,),
                Roboto("The model (height 6') is wearing a size M",fontSize: 14,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor,),




                SizedBox(height: 10,),
                Roboto('Material & Care',fontSize: 14,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor,),
                SizedBox(height: 5,),

                Roboto('100% cotton',fontSize: 14,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor,),
                Roboto('Machine Wash',fontSize: 14,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor,),





                SizedBox(height: 10,),
                Roboto('See More',fontSize: 14,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor,),



                SizedBox(height: 20,),
                CustomerReviewBox(),
                CustomerReviewComments(),
                Align(alignment: Alignment.centerRight,child:


                Roboto('View All Reviews (17)',fontSize: 14,fontWeight: FontWeight.w600,color: Get.theme.primaryColor,),

                ),

                Roboto('You can also like this',fontSize: 18,fontWeight: FontWeight.w600,color: Get.theme.secondaryHeaderColor,),




                SizedBox(height: 10,),







                SizedBox(height: 10,),



                SingleChildScrollView(physics: BouncingScrollPhysics(),scrollDirection: Axis.horizontal,
                  child: Row(spacing: 20,
                    children: [

                    SizedBox(height: 222,width: 150,child: CustomCard(imageUrl: images.womenwear4, titleText: 'Floral Kurta with Dupatta', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5')),
                    SizedBox(height: 222,width: 150,child: CustomCard(imageUrl: images.womenwear5, titleText: 'Floral Kurta with Dupatta', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5')),
                    SizedBox(height: 222,width: 150,child: CustomCard(imageUrl: images.womenwear6, titleText: 'Floral Kurta with Dupatta', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5')),
                    SizedBox(height: 222,width: 150,child: CustomCard(imageUrl: images.womenwear7, titleText: 'Floral Kurta with Dupatta', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5')),
                    SizedBox(height: 222,width: 150,child: CustomCard(imageUrl: images.womenwear8, titleText: 'Floral Kurta with Dupatta', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5')),
                    SizedBox(height: 222,width: 150,child: CustomCard(imageUrl: images.womenwear1, titleText: 'Floral Kurta with Dupatta', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5')),
                    SizedBox(height: 222,width: 150,child: CustomCard(imageUrl: images.womenwear2, titleText: 'Floral Kurta with Dupatta', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5')),
                    SizedBox(height: 222,width: 150,child: CustomCard(imageUrl: images.womenwear3, titleText: 'Floral Kurta with Dupatta', dynamicText1: '₹1,000', dynamicText2: '₹800', star: '3.5')),

                  ],),
                ),
                SizedBox(height: 10,)








              ],
            ),
          ),











        ],
      ),







    );
  }
}
