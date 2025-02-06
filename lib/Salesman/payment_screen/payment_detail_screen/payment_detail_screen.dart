import 'package:e_commerce_app/custom_widgets/custom_statement_list.dart';
import 'package:e_commerce_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../custom_widgets/custom_texts.dart';

class PaymentDetailScreen extends StatefulWidget {
  const PaymentDetailScreen({super.key});

  @override
  State<PaymentDetailScreen> createState() => _PaymentDetailScreenState();
}

class _PaymentDetailScreenState extends State<PaymentDetailScreen> {
  int listVisible = 0; // Moved outside build()

  List<TransactionTile> getTransactionList() {
    if (listVisible == 1) {
      return List.generate(5, (index) => TransactionTile(
        location: 'Indore',
        type: 'Commissioned',
        typeColor: Colors.red,
        dateTime: 'Mon, 11 Dec, 2024 : 8:30 PM',
        amount: '100.00',
      ));
    } else if (listVisible == 2) {
      return List.generate(9, (index) => TransactionTile(
        location: 'Indore',
        type: 'Earning',
        typeColor: Colors.green,
        dateTime: 'Mon, 11 Dec, 2024 : 8:30 PM',
        amount: '500.00',
      ));
    } else {
      return [
        TransactionTile(location: 'Indore', type: 'Commissioned', typeColor: Colors.red, dateTime: 'Mon, 11 Dec, 2024 : 8:30 PM', amount: '100.00'),
        TransactionTile(location: 'Indore', type: 'Earning', typeColor: Colors.green, dateTime: 'Mon, 11 Dec, 2024 : 8:30 PM', amount: '500.00'),
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Get.theme.primaryColor,
        titleSpacing: 0,
        centerTitle: true,
        title: Poppins(
          'Payment',
          color: Get.theme.cardColor,
          fontWeight: FontWeight.w500,
        ),
        leading: InkWell(
          onTap: () => Get.back(),
          child: Icon(Icons.arrow_back_ios_rounded, color: Get.theme.cardColor, size: 24),
        ),
        actions: [
          PopupMenuButton<int>(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            icon: Center(
              child: Image.asset(
                images.filter,
                width: 24,
                height: 24,
                fit: BoxFit.cover,
                color: Get.theme.cardColor,
              ),
            ),
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                height: 30,
                value: 1,
                child: Center(
                  child: Poppins(
                    'Total Commission',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              PopupMenuItem<int>(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                height: 30,
                value: 2,
                child: Center(
                  child: Poppins(
                    'Total Earning',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[700],
                  ),
                ),
              ),
            ],
            onSelected: (value) {
              setState(() => listVisible = value);
            },
          ),
          const SizedBox(width: 24),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        children: getTransactionList(),
      ),
    );
  }
}
