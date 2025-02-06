
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../custom_widgets/custom_buttons.dart';
import '../../../../custom_widgets/custom_check_box.dart';
import '../../../../custom_widgets/custom_radio_button.dart';
import '../../../../custom_widgets/custom_rich_text.dart';

class FilterScreen extends StatefulWidget{
  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool isChecked = false;
  int select=1;
  @override
  Widget build(BuildContext context) {

    return
      SafeArea(
        child: Scaffold(backgroundColor:Get.theme.scaffoldBackgroundColor,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 24),
            child: CustomButton(text: 'Apply', onPressed: (){Get.close(1);}),
          ),

          body:Row(
            children: [









              //leftPart//
              Expanded(flex: 2,child: Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(30))),
                  child: Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(padding: EdgeInsets.symmetric(horizontal: 24),width: Get.width,height: 70,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.only(topRight: Radius.circular(30))),
                        child: Align(alignment: Alignment.centerLeft,child: IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back_ios_new_sharp,size: 24,color: Colors.white,))),
                      ),



                      Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          InkWell(onTap: (){setState(() {select=1;});},child: ListTile(minTileHeight: 30,title: Poppins('Category',fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black,),)),
                          InkWell(onTap: (){setState(() {select=2;});},child: ListTile(minTileHeight: 30,title: Poppins('Brand',fontSize: 16,fontWeight: select==2?FontWeight.w500:FontWeight.w400,color: Colors.black,),),),
                          InkWell(onTap: (){setState(() {select=3;});},child: ListTile(minTileHeight: 30,title: Poppins('Price',fontSize: 16,fontWeight: select==3?FontWeight.w500:FontWeight.w400,color: Colors.black,),),),
                          InkWell(onTap: (){setState(() {select=4;});},child: ListTile(minTileHeight: 30,title:  Poppins('Color',fontSize: 16,fontWeight: select==4?FontWeight.w500:FontWeight.w400,color: Colors.black,),),),
                          InkWell(onTap: (){setState(() {select=5;});},child: ListTile(minTileHeight: 30,title:  Poppins('Discount',fontSize: 16,fontWeight: select==5?FontWeight.w500:FontWeight.w400,color: Colors.black,),),),
                        ],)
                    ],
                  )
              )),














//Right Part///
              Expanded(flex: 4,child: Container(decoration: BoxDecoration(color: Get.theme.scaffoldBackgroundColor,borderRadius: BorderRadius.only(topRight: Radius.circular(30))),
                  child: Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(padding: EdgeInsets.symmetric(horizontal: 24),width: Get.width,height: 70,decoration: BoxDecoration(color: Get.theme.scaffoldBackgroundColor,borderRadius: BorderRadius.only(topRight: Radius.circular(30))),
                        child: Align(alignment: Alignment.centerRight,child: TextButton(onPressed: (){},child: Poppins('Clear Filters',fontSize: 12,fontWeight: FontWeight.w600,color: Get.theme.primaryColor,),)),
                      ),
                      SizedBox(height: 40,),




                      select==1? CategoryFilter():
                      select==2?BrandFilter():
                      select==3?PriceFilter():
                      select==4?ColorFilter():
                      DiscountFilter()















                    ],
                  )
              )),



            ],
          ),
        ),
      );
  }
}



class CategoryFilter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      Column(children: [
        ListTile(minTileHeight: 30,leading:CustomRichText(firstText: 'Sarees ', secondText: '(4851)',), trailing: CustomCheckBox(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:CustomRichText(firstText: 'Kurta Set ', secondText: '(4851)',), trailing: CustomCheckBox(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:CustomRichText(firstText: 'Jewellery Set ', secondText: '(4851)',), trailing: CustomCheckBox(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:CustomRichText(firstText: 'Earrings', secondText: '(4851)',), trailing: CustomCheckBox(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:CustomRichText(firstText: 'Dress Materials ', secondText: '(4851)',), trailing: CustomCheckBox(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:CustomRichText(firstText: 'Ethenic Dresses ', secondText: '(4851)',), trailing: CustomCheckBox(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:CustomRichText(firstText: 'Lahenga Choli ', secondText: '(4851)',), trailing: CustomCheckBox(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:CustomRichText(firstText: 'Dupatta ', secondText: '(4851)',), trailing: CustomCheckBox(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,),
          child: Align(alignment: Alignment.centerRight,child: Text('+200 More',style: GoogleFonts.poppins(color: Get.theme.secondaryHeaderColor,fontSize: 12,fontWeight: FontWeight.w500)),),
        )
      ],);
  }
}
class BrandFilter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      Column(children: [
        ListTile(minTileHeight: 30,leading:CustomRichText(firstText: 'KALINI ', secondText: '(4851)',), trailing: CustomCheckBox(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:CustomRichText(firstText: 'Mitera ', secondText: '(4851)',), trailing: CustomCheckBox(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:CustomRichText(firstText: 'Anouk ', secondText: '(4851)',), trailing: CustomCheckBox(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:CustomRichText(firstText: 'Sangria ', secondText: '(4851)',), trailing: CustomCheckBox(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:CustomRichText(firstText: 'Saree Mall ', secondText: '(4851)',), trailing: CustomCheckBox(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:CustomRichText(firstText: 'MANVAA ', secondText: '(4851)',), trailing: CustomCheckBox(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:CustomRichText(firstText: 'AMI ', secondText: '(4851)',), trailing: CustomCheckBox(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:CustomRichText(firstText: 'ASISA', secondText: '(4851)',), trailing: CustomCheckBox(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:CustomRichText(firstText: 'Aniata ', secondText: '(4851)',), trailing: CustomCheckBox(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,),
          child: Align(alignment: Alignment.centerRight,child: Text('+200 More',style: GoogleFonts.poppins(color: Get.theme.secondaryHeaderColor,fontSize: 12,fontWeight: FontWeight.w500)),),
        )
      ],);
  }
}
class PriceFilter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      Column(children: [
        ListTile(minTileHeight: 30,leading:CustomRichText(firstText: 'Rs. 100 to 5,000  ', secondText: '(4851)',), trailing: CustomCheckBox(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:CustomRichText(firstText: 'Rs. 5,000 to 10,000  ', secondText: '(4851)',), trailing: CustomCheckBox(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:CustomRichText(firstText: 'Rs. 10,000 to 20,000 ', secondText: '(4851)',), trailing: CustomCheckBox(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:CustomRichText(firstText: 'Rs. 20,000 to 30,000 ', secondText: '(4851)',), trailing: CustomCheckBox(),),
      ],);
  }
}



class ColorFilter extends StatelessWidget{@override
Widget build(BuildContext context) {
  return
    Column(children: [
      ListTile(minTileHeight: 30,leading: CircleAvatar(radius: 8,backgroundColor: Colors.red,),horizontalTitleGap: 0,title:CustomRichText(firstText: 'Red ', secondText: '(4851)',), trailing: CustomCheckBox(),),
      Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
      ListTile(minTileHeight: 30,leading: CircleAvatar(radius: 8,backgroundColor: Colors.yellow,),horizontalTitleGap: 0,title:CustomRichText(firstText: 'Yellow  ', secondText: '(4851)',), trailing: CustomCheckBox(),),
      Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
      ListTile(minTileHeight: 30,leading: CircleAvatar(radius: 8,backgroundColor: Colors.green,),horizontalTitleGap: 0,title:CustomRichText(firstText: 'Green ', secondText: '(4851)',), trailing: CustomCheckBox(),),
      Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
      ListTile(minTileHeight: 30,leading: CircleAvatar(radius: 8,backgroundColor: Colors.purple,),horizontalTitleGap: 0,title:CustomRichText(firstText: 'Violet ', secondText: '(4851)',), trailing: CustomCheckBox(),),
      Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
      ListTile(minTileHeight: 30,leading: CircleAvatar(radius: 8,backgroundColor: Colors.pink,),horizontalTitleGap: 0,title:CustomRichText(firstText: 'Pink ', secondText: '(4851)',), trailing: CustomCheckBox(),),
      Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
      ListTile(minTileHeight: 30,leading: CircleAvatar(radius: 8,backgroundColor: Colors.blue,),horizontalTitleGap: 0,title:CustomRichText(firstText: 'Blue ', secondText: '(4851)',), trailing: CustomCheckBox(),),
      Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
      ListTile(minTileHeight: 30,leading: CircleAvatar(radius: 8,backgroundColor: Colors.orange,),horizontalTitleGap: 0,title:CustomRichText(firstText: 'Saffron ', secondText: '(4851)',), trailing: CustomCheckBox(),),
      Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,),
        child: Align(alignment: Alignment.centerRight,child: Text('+200 More',style: GoogleFonts.poppins(color:Get.theme.secondaryHeaderColor,fontSize: 12,fontWeight: FontWeight.w500)),),
      )
    ],);

}

}




class DiscountFilter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      Column(children: [
        ListTile(minTileHeight: 30,leading:Text('10% and Above',style: GoogleFonts.poppins(color: Get.theme.secondaryHeaderColor,fontSize: 16,fontWeight: FontWeight.w400),), trailing: CustomRadioButton(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:Text('20% and Above',style: GoogleFonts.poppins(color: Get.theme.secondaryHeaderColor,fontSize: 16,fontWeight: FontWeight.w400),), trailing: CustomRadioButton(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:Text('30% and Above',style: GoogleFonts.poppins(color: Get.theme.secondaryHeaderColor,fontSize: 16,fontWeight: FontWeight.w400),),  trailing:CustomRadioButton(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:Text('40% and Above',style: GoogleFonts.poppins(color: Get.theme.secondaryHeaderColor,fontSize: 16,fontWeight: FontWeight.w400),),  trailing: CustomRadioButton(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:Text('50% and Above',style: GoogleFonts.poppins(color: Get.theme.secondaryHeaderColor,fontSize: 16,fontWeight: FontWeight.w400),),  trailing:CustomRadioButton(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:Text('60% and Above',style: GoogleFonts.poppins(color: Get.theme.secondaryHeaderColor,fontSize: 16,fontWeight: FontWeight.w400),),  trailing:CustomRadioButton(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:Text('70% and Above',style: GoogleFonts.poppins(color: Get.theme.secondaryHeaderColor,fontSize: 16,fontWeight: FontWeight.w400),),  trailing: CustomRadioButton(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:Text('80% and Above',style: GoogleFonts.poppins(color: Get.theme.secondaryHeaderColor,fontSize: 16,fontWeight: FontWeight.w400),),  trailing: CustomRadioButton(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        ListTile(minTileHeight: 30,leading:Text('90% and Above',style: GoogleFonts.poppins(color: Get.theme.secondaryHeaderColor,fontSize: 16,fontWeight: FontWeight.w400),),  trailing:CustomRadioButton(),),
        Divider(height: 15,thickness: .7,indent: 10,endIndent: 10,color: Colors.white,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,),
          child: Align(alignment: Alignment.centerRight,child: Text('+200 More',style: GoogleFonts.poppins(color: Get.theme.secondaryHeaderColor,fontSize: 12,fontWeight: FontWeight.w500)),),
        )

      ],);
  }
}
