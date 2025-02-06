import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../custom_widgets/custom_texts.dart';

class DistributerOrderDetailScreen extends StatelessWidget {
  const DistributerOrderDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Get.theme.primaryColor,
        titleSpacing: 0,
        centerTitle: true,
        title: Poppins(
          'Order Details',
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


      body:
      ListView(padding: EdgeInsets.symmetric(horizontal: 24,vertical: 20),
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Poppins('Order ID #',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,), Poppins('ED-T/12',fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey[700],),],),
          Divider(color: Colors.grey,height: 20,thickness: 1,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Poppins('Date',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,), Poppins('11/11/2024',fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey[700],),],),
          Divider(color: Colors.grey,height: 20,thickness: 1,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Poppins('Retailer',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,), Poppins('Indore',fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey[700],),],),
          Divider(color: Colors.grey,height: 20,thickness: 1,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Poppins('Amount',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,), Poppins('10,000.00',fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey[700],),],),
          Divider(color: Colors.grey,height: 20,thickness: 1,),





          SingleChildScrollView(padding: EdgeInsets.symmetric(vertical: 40),
            scrollDirection: Axis.horizontal, // Enables horizontal scrolling
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical, // Enables vertical scrolling
              child: DataTable(headingRowColor: WidgetStateColor.resolveWith((states) => Colors.grey),
                columnSpacing: 30,
                columns: [
                  DataColumn(label: Poppins('Product Name',fontWeight: FontWeight.w500,fontSize: 14,)),
                  DataColumn(label: Poppins('Size',fontWeight: FontWeight.w500,fontSize: 14,)),
                  DataColumn(label: Poppins('Pack',fontWeight: FontWeight.w500,fontSize: 14,)),
                  DataColumn(label: Poppins('Stock',fontWeight: FontWeight.w500,fontSize: 14,)),
                  DataColumn(label: Poppins('Qty',fontWeight: FontWeight.w500,fontSize: 14,)),
                  DataColumn(label: Poppins('MRP',fontWeight: FontWeight.w500,fontSize: 14,)),
                  DataColumn(label: Poppins('Total Amount',fontWeight: FontWeight.w500,fontSize: 14,)),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Poppins('Puma Tshirt 14201',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('Small',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('5P',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('400',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('2',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('500.00',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('500.00',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                  ]),



                  DataRow(cells: [
                    DataCell(Poppins('Puma Tshirt 14201',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('Small',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('5P',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('400',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('3',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('100.00',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('100.00',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                  ]),

                  DataRow(cells: [
                    DataCell(Poppins('Puma Tshirt 14201',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('Small',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('5P',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('400',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('2',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('100.00',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('100.00',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                  ]),

                  DataRow(cells: [
                    DataCell(Poppins('Puma Tshirt 14201',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('Small',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('5P',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('400',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('2',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('100.00',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('100.00',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                  ]),

                  DataRow(cells: [
                    DataCell(Poppins('Puma Tshirt 14201',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('Small',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('5P',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('400',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('2',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('100.00',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('100.00',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                  ]),

                  DataRow(cells: [
                    DataCell(Poppins('Puma Tshirt 14201',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('Small',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('5P',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('400',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('1',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('100.00',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('100.00',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                  ]),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
