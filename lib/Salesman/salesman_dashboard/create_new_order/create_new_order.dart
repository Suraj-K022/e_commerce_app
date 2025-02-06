import 'package:e_commerce_app/Salesman/salesman_dashboard/create_new_order/create_retailer/create_retailer.dart';
import 'package:e_commerce_app/Salesman/salesman_dashboard/create_new_order/select_product_screen/select_product_screen.dart';
import 'package:e_commerce_app/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_app/custom_widgets/custom_contact_list.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateNewOrder extends StatefulWidget {
  const CreateNewOrder({super.key});

  @override
  _CreateNewOrderState createState() => _CreateNewOrderState();
}

class _CreateNewOrderState extends State<CreateNewOrder> {
  Map<int, bool> isExpandedMap = {}; // Track expansion state for each tile

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
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          SizedBox(height: 10),





          /// **Retailer Indore Expansion Tile**



          ExpansionTile(
            trailing: Icon(
              isExpandedMap[0] == true ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down_sharp,
            ),
            title: Poppins(
              'Retailer Indore',
              color: Get.theme.secondaryHeaderColor,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
            collapsedBackgroundColor: Get.theme.cardColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
            collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            onExpansionChanged: (expanded) {
              setState(() {
                isExpandedMap[0] = expanded;
              });
            },
            children: [
              InkWell(onTap: (){Get.to(SelectProductScreen());},child: ContactCard(contact: Contact(name: 'Aman Jain', address: '40 Sudama Nagar Sector D (145214)', phone: '731145214', mobile: '9145214521'))),
              InkWell(onTap: (){Get.to(SelectProductScreen());},child: ContactCard(contact: Contact(name: 'Aman Jain', address: '40 Sudama Nagar Sector D (145214)', phone: '731145214', mobile: '9145214521'))),
              InkWell(onTap: (){Get.to(SelectProductScreen());},child: ContactCard(contact: Contact(name: 'Aman Jain', address: '40 Sudama Nagar Sector D (145214)', phone: '731145214', mobile: '9145214521'))),
              InkWell(onTap: (){Get.to(SelectProductScreen());},child: ContactCard(contact: Contact(name: 'Aman Jain', address: '40 Sudama Nagar Sector D (145214)', phone: '731145214', mobile: '9145214521'))),
            ],
          ),

          SizedBox(height: 10),





          /// **Retailer Bhopal Expansion Tile**
          ExpansionTile(
            trailing: Icon(
              isExpandedMap[1] == true ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down_sharp,
            ),
            title: Poppins(
              'Retailer Bhopal',
              color: Get.theme.secondaryHeaderColor,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
            collapsedBackgroundColor: Get.theme.cardColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
            collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            onExpansionChanged: (expanded) {
              setState(() {
                isExpandedMap[1] = expanded;
              });
            },
            children: [
              InkWell(onTap: (){Get.to(SelectProductScreen());},child: ContactCard(contact: Contact(name: 'Aman Jain', address: '40 Sudama Nagar Sector D (145214)', phone: '731145214', mobile: '9145214521'))),
              InkWell(onTap: (){Get.to(SelectProductScreen());},child: ContactCard(contact: Contact(name: 'Aman Jain', address: '40 Sudama Nagar Sector D (145214)', phone: '731145214', mobile: '9145214521'))),
              InkWell(onTap: (){Get.to(SelectProductScreen());},child: ContactCard(contact: Contact(name: 'Aman Jain', address: '40 Sudama Nagar Sector D (145214)', phone: '731145214', mobile: '9145214521'))),
              InkWell(onTap: (){Get.to(SelectProductScreen());},child: ContactCard(contact: Contact(name: 'Aman Jain', address: '40 Sudama Nagar Sector D (145214)', phone: '731145214', mobile: '9145214521'))),
            ],
          ),

          SizedBox(height: 10),



          /// **Retailer Gujarat Expansion Tile**
          ExpansionTile(
            trailing: Icon(
              isExpandedMap[2] == true ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down_sharp,
            ),
            title: Poppins(
              'Retailer Gujarat',
              color: Get.theme.secondaryHeaderColor,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
            collapsedBackgroundColor: Get.theme.cardColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
            collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            onExpansionChanged: (expanded) {
              setState(() {
                isExpandedMap[1] = expanded;
              });
            },
            children: [
              ContactCard(contact: Contact(name: 'Aman Jain', address: '40 Sudama Nagar Sector D (145214)', phone: '731145214', mobile: '9145214521')),
              ContactCard(contact: Contact(name: 'Aman Jain', address: '40 Sudama Nagar Sector D (145214)', phone: '731145214', mobile: '9145214521')),
              ContactCard(contact: Contact(name: 'Aman Jain', address: '40 Sudama Nagar Sector D (145214)', phone: '731145214', mobile: '9145214521')),
              ContactCard(contact: Contact(name: 'Aman Jain', address: '40 Sudama Nagar Sector D (145214)', phone: '731145214', mobile: '9145214521')),
            ],
          ),


          SizedBox(height: 10),



          /// **Retailer Mumbai Expansion Tile**
          ExpansionTile(
            trailing: Icon(
              isExpandedMap[2] == true ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down_sharp,
            ),
            title: Poppins(
              'Retailer Mumbai',
              color: Get.theme.secondaryHeaderColor,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
            collapsedBackgroundColor: Get.theme.cardColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
            collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            onExpansionChanged: (expanded) {
              setState(() {
                isExpandedMap[1] = expanded;
              });
            },
            children: [
              ContactCard(contact: Contact(name: 'Aman Jain', address: '40 Sudama Nagar Sector D (145214)', phone: '731145214', mobile: '9145214521')),
              ContactCard(contact: Contact(name: 'Aman Jain', address: '40 Sudama Nagar Sector D (145214)', phone: '731145214', mobile: '9145214521')),
              ContactCard(contact: Contact(name: 'Aman Jain', address: '40 Sudama Nagar Sector D (145214)', phone: '731145214', mobile: '9145214521')),
              ContactCard(contact: Contact(name: 'Aman Jain', address: '40 Sudama Nagar Sector D (145214)', phone: '731145214', mobile: '9145214521')),
            ],
          ),


          SizedBox(height: 10),



          /// **Retailer Punjab Expansion Tile**
          ExpansionTile(
            trailing: Icon(
              isExpandedMap[2] == true ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down_sharp,
            ),
            title: Poppins(
              'Retailer Punjab',
              color: Get.theme.secondaryHeaderColor,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
            collapsedBackgroundColor: Get.theme.cardColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
            collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            onExpansionChanged: (expanded) {
              setState(() {
                isExpandedMap[1] = expanded;
              });
            },
            children: [
              ContactCard(contact: Contact(name: 'Aman Jain', address: '40 Sudama Nagar Sector D (145214)', phone: '731145214', mobile: '9145214521')),
              ContactCard(contact: Contact(name: 'Aman Jain', address: '40 Sudama Nagar Sector D (145214)', phone: '731145214', mobile: '9145214521')),
              ContactCard(contact: Contact(name: 'Aman Jain', address: '40 Sudama Nagar Sector D (145214)', phone: '731145214', mobile: '9145214521')),
              ContactCard(contact: Contact(name: 'Aman Jain', address: '40 Sudama Nagar Sector D (145214)', phone: '731145214', mobile: '9145214521')),
            ],
          ),
        ],
      ),
    );
  }
}
