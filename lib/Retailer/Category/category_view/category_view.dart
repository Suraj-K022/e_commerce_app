import 'package:e_commerce_app/Retailer/Home/category_detail_screen/category_detail_screen.dart';
import 'package:e_commerce_app/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryViewScreen extends StatefulWidget {
  const CategoryViewScreen({super.key});

  @override
  _CategoryViewScreenState createState() => _CategoryViewScreenState();
}

class _CategoryViewScreenState extends State<CategoryViewScreen> {
  final Map<int, bool> _expandedTiles = {}; // Track expanded state for each tile

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Men'),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
        children: [
          _buildExpansionTile(0, 'TopWear', [
            'T-Shirts',
            'Casual Shirts',
            'Formal Shirts',
            'Sweatshirts',
            'Jackets',
            'Sweaters',
            'Blazer & Suits',
            'Coats',
            'Clothing Fabrics',
          ]),
          SizedBox(height: 10,),
          _buildExpansionTile(1, 'BottomWear', [
            'Jeans',
            'Casual Trousers',
            'Formal Trousers',
            'Joggers & Track Pants',
            'Shorts',
            'Cargos',
            'Three-Quarter Pants',
          ]),
          SizedBox(height: 10,),
          _buildExpansionTile(2, 'Footwear', [
            'T-Shirts',
            'Casual Shirts',
            'Formal Shirts',
            'Sweatshirts',
            'Jackets',
            'Sweaters',
            'Blazer & Suits',
            'Coats',
            'Clothing Fabrics',
          ]),
          SizedBox(height: 10,),
          _buildExpansionTile(3, 'Watches', [
            'T-Shirts',
            'Casual Shirts',
            'Formal Shirts',
            'Sweatshirts',
            'Jackets',
            'Sweaters',
            'Blazer & Suits',
            'Coats',
            'Clothing Fabrics',
          ]),
          SizedBox(height: 10,),
          _buildExpansionTile(4, 'Sportwear', [
            'T-Shirts',
            'Casual Shirts',
            'Formal Shirts',
            'Sweatshirts',
            'Jackets',
            'Sweaters',
            'Blazer & Suits',
            'Coats',
            'Clothing Fabrics',
          ]),
          SizedBox(height: 10,),
          _buildExpansionTile(5, 'Innerwear', [
            'T-Shirts',
            'Casual Shirts',
            'Formal Shirts',
            'Sweatshirts',
            'Jackets',
            'Sweaters',
            'Blazer & Suits',
            'Coats',
            'Clothing Fabrics',
          ]),
          SizedBox(height: 10,),
          _buildExpansionTile(6, 'Ethenicwear', [
            'T-Shirts',
            'Casual Shirts',
            'Formal Shirts',
            'Sweatshirts',
            'Jackets',
            'Sweaters',
            'Blazer & Suits',
            'Coats',
            'Clothing Fabrics',
          ]),
          SizedBox(height: 10,),
          _buildExpansionTile(7, 'loungewear & Sleepwear', [
            'T-Shirts',
            'Casual Shirts',
            'Formal Shirts',
            'Sweatshirts',
            'Jackets',
            'Sweaters',
            'Blazer & Suits',
            'Coats',
            'Clothing Fabrics',
          ]),
          SizedBox(height: 10,),
          _buildExpansionTile(8, 'Personal Care', [
            'T-Shirts',
            'Casual Shirts',
            'Formal Shirts',
            'Sweatshirts',
            'Jackets',
            'Sweaters',
            'Blazer & Suits',
            'Coats',
            'Clothing Fabrics',
          ]),
          SizedBox(height: 10,),
          _buildExpansionTile(9, 'Winterwear', [
            'T-Shirts',
            'Casual Shirts',
            'Formal Shirts',
            'Sweatshirts',
            'Jackets',
            'Sweaters',
            'Blazer & Suits',
            'Coats',
            'Clothing Fabrics',
          ]),
          SizedBox(height: 10,),
          _buildExpansionTile(10, 'Bags & Wallet', [
            'T-Shirts',
            'Casual Shirts',
            'Formal Shirts',
            'Sweatshirts',
            'Jackets',
            'Sweaters',
            'Blazer & Suits',
            'Coats',
            'Clothing Fabrics',
          ]),
          SizedBox(height: 10,),
          _buildExpansionTile(11, 'Other Accessories', [
            'T-Shirts',
            'Casual Shirts',
            'Formal Shirts',
            'Sweatshirts',
            'Jackets',
            'Sweaters',
            'Blazer & Suits',
            'Coats',
            'Clothing Fabrics',
          ]),
























        ],
      ),
    );
  }

  Widget _buildExpansionTile(int index, String title, List<String> items) {
    return ExpansionTile(
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      collapsedBackgroundColor: Get.theme.cardColor,
      minTileHeight: 10,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(4),
      ),
      onExpansionChanged: (expanded) {
        setState(() {
          _expandedTiles[index] = expanded;
        });
      },
      title: Poppins(
        title,
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: _expandedTiles[index] == true
            ? Get.theme.primaryColor
            : Get.theme.secondaryHeaderColor, // Change color only when expanded
      ),
      trailing: Icon(
        _expandedTiles[index] == true
            ? Icons.keyboard_arrow_up
            : Icons.keyboard_arrow_down_sharp,
        size: 24,
        color: _expandedTiles[index] == true
            ? Get.theme.primaryColor
            : Get.theme.secondaryHeaderColor, // Change icon color only when expanded
      ),
      children: items
          .map((item) => Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey.shade300),
            bottom: BorderSide(color: Colors.grey.shade300),
          ),
        ),
        child: InkWell(onTap: (){Get.to(CategoryDetailScreen());},
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            enabled: true,
            dense: true,
            minTileHeight: 10,
            title: Poppins(
              item,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Get.theme.secondaryHeaderColor,
            ),
          ),
        ),
      ))
          .toList(),
    );
  }
}
