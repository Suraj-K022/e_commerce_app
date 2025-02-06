import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../custom_widgets/custom_texts.dart';
import '../../../utils/images.dart';

class DistributorProductAvailableScreen extends StatefulWidget {
  const DistributorProductAvailableScreen({super.key});

  @override
  State<DistributorProductAvailableScreen> createState() => _DistributorProductAvailableScreenState();
}

class _DistributorProductAvailableScreenState extends State<DistributorProductAvailableScreen> {
  int screen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.theme.primaryColor,
        centerTitle: true,
        title: Poppins(
          'Product Availability',
          color: Get.theme.cardColor,
          fontWeight: FontWeight.w500,
        ),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back_ios_rounded, color: Get.theme.cardColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          children: [
            _buildSearchBar(),
            const SizedBox(height: 20),
            _buildRedContainer(), // Added Red Container
            const SizedBox(height: 20),
            Expanded(
              child: screen == 0 ? _buildProductGrid() : _buildProductTable(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Get.theme.cardColor,
        borderRadius: BorderRadius.circular(10),
        border: Border(bottom: BorderSide(color: Colors.grey, width: 1)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          const Icon(Icons.search, color: Colors.grey, size: 24),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Products',
                hintStyle: GoogleFonts.poppins(color: Colors.grey, fontSize: 16),
                border: InputBorder.none,
              ),
              style: GoogleFonts.poppins(
                color: Get.theme.secondaryHeaderColor,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRedContainer() {
    return Visibility(
      visible: screen == 1, // Show only when screen == 1
      child: Container(
        height: 212,
        width: double.infinity,
        color: Colors.grey[400],
        child: Image.asset(images.orderimage3,fit: BoxFit.cover,),
      ),
    );
  }

  Widget _buildProductGrid() {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        _buildProductItem(images.orderimage1, onTap: () {
          setState(() {
            screen = 1;
          });
        }),
        _buildProductItem(images.orderimage2),
      ],
    );
  }

  Widget _buildProductItem(String imagePath, {VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 163,
        decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Image.asset(imagePath, fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildProductTable() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        headingRowColor: WidgetStateColor.resolveWith((states) => Colors.grey),
        columnSpacing: 30,
        columns: _buildTableColumns(),
        rows: _buildTableRows(),
      ),
    );
  }

  List<DataColumn> _buildTableColumns() {
    List<String> columnTitles = [
      'Product Name', 'Size', 'Pack', 'Available Qty', 'MRP',
    ];
    return columnTitles
        .map((title) => DataColumn(
      label: Poppins(title, fontWeight: FontWeight.w500, fontSize: 14),
    ))
        .toList();
  }

  List<DataRow> _buildTableRows() {
    List<Map<String, String>> data = [
      {'name': 'Puma Tshirt 14201', 'size': 'Small', 'pack': '5P', 'stock': '400', 'qty': '2', 'mrp': '500.00', 'total': '500.00'},
      {'name': 'Puma Tshirt 14201', 'size': 'Small', 'pack': '5P', 'stock': '400', 'qty': '2', 'mrp': '100.00', 'total': '100.00'},
      {'name': 'Puma Tshirt 14201', 'size': 'Small', 'pack': '5P', 'stock': '400', 'qty': '2', 'mrp': '100.00', 'total': '100.00'},
    ];
    return data
        .map((item) => DataRow(cells: [
      DataCell(Poppins(item['name']!, fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[700])),
      DataCell(Poppins(item['size']!, fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[700])),
      DataCell(Poppins(item['pack']!, fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[700])),
      DataCell(Poppins(item['qty']!, fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[700])),
      DataCell(Poppins(item['mrp']!, fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[700])),
    ]))
        .toList();
  }
}
