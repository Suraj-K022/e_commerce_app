import 'package:e_commerce_app/Salesman/payment_screen/payment_detail_screen/payment_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../custom_widgets/custom_texts.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:
      AppBar(
        backgroundColor: Get.theme.primaryColor,
        titleSpacing: 0,
        centerTitle: true,
        title: Poppins(
          'Payment',
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

          Row(spacing: 16,children: [
            Expanded(flex: 1,child: Container(padding: EdgeInsets.symmetric(vertical: 10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Get.theme.primaryColor),child:Column(children: [
              Poppins('1.5 Lakh',fontSize: 24,fontWeight: FontWeight.w700,color: Get.theme.cardColor,),
              Poppins('Total Earning',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.cardColor,),

            ],),)),
            Expanded(flex: 1,child: Container(padding: EdgeInsets.symmetric(vertical: 10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Get.theme.primaryColor),child:Column(children: [
              Poppins('100',fontSize: 24,fontWeight: FontWeight.w700,color: Get.theme.cardColor,),
              Poppins('Total Orders',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.cardColor,),

            ],),)),







          ],),



          SingleChildScrollView(padding: EdgeInsets.symmetric(vertical: 24),
            scrollDirection: Axis.horizontal, // Enables horizontal scrolling
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical, // Enables vertical scrolling
              child: DataTable(headingRowColor: WidgetStateColor.resolveWith((states) => Colors.grey),
                columnSpacing: 30,
                columns: [
                  DataColumn(label: Poppins('Date',fontWeight: FontWeight.w500,fontSize: 14,)),
                  DataColumn(label: Poppins('Retailer',fontWeight: FontWeight.w500,fontSize: 14,)),
                  DataColumn(label: Poppins('Retailer Name',fontWeight: FontWeight.w500,fontSize: 14,)),
                  DataColumn(label: Poppins('Amount',fontWeight: FontWeight.w500,fontSize: 14,)),
                  DataColumn(label: Poppins('Status',fontWeight: FontWeight.w500,fontSize: 14,)),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(InkWell(onTap: (){Get.to(PaymentDetailScreen());},child: Poppins('11/11/2024',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],))),
                    DataCell(Poppins('Indore',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('Aman Jain',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('500.00',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('Paid',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                  ]),



                  DataRow(cells: [
                    DataCell(InkWell(onTap: (){Get.to(PaymentDetailScreen());},child: Poppins('11/11/2024',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],))),
                    DataCell(Poppins('Bhopal',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('Aman Jain',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('500.00',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('Unpaid',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                  ]),

                  DataRow(cells: [
                    DataCell(InkWell(onTap: (){Get.to(PaymentDetailScreen());},child: Poppins('11/11/2024',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],))),
                    DataCell(Poppins('Bhopal',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('Aman Jain',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('500.00',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
                    DataCell(Poppins('Unpaid',fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey[700],)),
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
