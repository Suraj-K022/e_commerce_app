import 'package:e_commerce_app/Salesman/salesman_dashboard/order_screen/order_detail_screen/order_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../custom_widgets/custom_texts.dart';
import 'distributer_order_detail_screen/distributer_order_detail_screen.dart';

class DistributerOrderScreen extends StatelessWidget {
  const DistributerOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Get.theme.primaryColor,
        titleSpacing: 0,
        centerTitle: true,
        title: Poppins(
          'Orders ',
          color: Get.theme.cardColor,
          fontWeight: FontWeight.w500,
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios_rounded, color: Get.theme.cardColor, size: 24),
        ),
      ),
      body: SingleChildScrollView(padding: EdgeInsets.symmetric(horizontal: 24,vertical: 10),
        scrollDirection: Axis.horizontal, // Enables horizontal scrolling
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical, // Enables vertical scrolling
          child: DataTable(headingRowColor: WidgetStateColor.resolveWith((states) => Colors.grey),
            columnSpacing: 30,
            columns: [
              DataColumn(label: Poppins('Order Id',fontWeight: FontWeight.w500,fontSize: 14,)),
              DataColumn(label: Poppins('Date',fontWeight: FontWeight.w500,fontSize: 14,)),
              DataColumn(label: Poppins('Retailer Order',fontWeight: FontWeight.w500,fontSize: 14,)),
              DataColumn(label: Poppins('Amount',fontWeight: FontWeight.w500,fontSize: 14,)),
            ],
            rows: [
              DataRow(cells: [
                DataCell(InkWell(onTap: (){Get.to(DistributerOrderDetailScreen());},child: Poppins('#455111',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],))),
                DataCell(Poppins('11/11/2024',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                DataCell(Poppins('Indore',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                DataCell(Poppins('500.00',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
              ]),



              DataRow(cells: [
                DataCell(InkWell(onTap: (){Get.to(DistributerOrderDetailScreen());},child: Poppins('#485111',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],))),
                DataCell(Poppins('11/11/2024',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                DataCell(Poppins('Bhopal',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                DataCell(Poppins('100.00',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
