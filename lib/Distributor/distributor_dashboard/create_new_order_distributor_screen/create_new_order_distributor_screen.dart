import 'package:e_commerce_app/Distributor/distributor_dashboard/create_new_order_distributor_screen/select_product_screen_distributer/select_product_screen_distributer.dart';
import 'package:e_commerce_app/Salesman/salesman_dashboard/create_new_order/select_product_screen/select_product_screen.dart';
import 'package:e_commerce_app/Salesman/salesman_dashboard/order_screen/order_detail_screen/order_detail_screen.dart';
import 'package:e_commerce_app/Salesman/salesman_dashboard/order_screen/order_screen.dart';
import 'package:e_commerce_app/custom_widgets/custom_contact_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Salesman/salesman_dashboard/create_new_order/create_retailer/create_retailer.dart';
import '../../../custom_widgets/custom_texts.dart';

class CreateNewOrderDistributorScreen extends StatelessWidget {
  const CreateNewOrderDistributorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Get.theme.primaryColor,
        titleSpacing: 0,
        centerTitle: true,
        title: Poppins(
          'Create New Order',
          color: Get.theme.cardColor,
          fontWeight: FontWeight.w500,
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios_rounded, color: Get.theme.cardColor, size: 24),
        ),
        actions: [
          InkWell(onTap: (){Get.to(CreateRetailer());},child: Icon(Icons.add_circle_outline_sharp, size: 24, color: Get.theme.cardColor)),
          SizedBox(width: 24),
        ],
      ),
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 24),
      children: [
        InkWell(onTap: (){Get.to(SelectProductScreenDistributer());},child: ContactCard(contact: Contact(name: 'Retailer Indore', address: '40 Sudama Nagar Sector D (145214)', phone: '731145214 ', mobile: ' 9145214521 '))),
        InkWell(onTap: (){Get.to(SelectProductScreen());},child: ContactCard(contact: Contact(name: 'Retailer Bhopal', address: '40 Sudama Nagar Sector D (145214)', phone: '731145214 ', mobile: ' 9145214521 '))),
        ContactCard(contact: Contact(name: 'Retailer Mumbai', address: '40 Sudama Nagar Sector D (145214)', phone: '731145214 ', mobile: ' 9145214521 ')),
        ContactCard(contact: Contact(name: 'Retailer Delhi', address: '40 Sudama Nagar Sector D (145214)', phone: '731145214 ', mobile: ' 9145214521 '))
      ],),
    );
  }
}
