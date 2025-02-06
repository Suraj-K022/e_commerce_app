import 'package:e_commerce_app/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:e_commerce_app/custom_widgets/custom_wishlist_card.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:e_commerce_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  final bool? backButton;

  const SearchScreen({super.key, this.backButton});

  @override
  Widget build(BuildContext context) {
    // Controller for the search bar
    final TextEditingController searchController = TextEditingController();

    return Scaffold(backgroundColor: Get.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        actions: [Container(height: 24, width: 24, child: Image.asset(images.gallery)), SizedBox(width: 24)],
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        centerTitle: true,
        leading: backButton == true ? SizedBox() : InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: Poppins('Search', fontSize: 16, fontWeight: FontWeight.w500, color: Get.theme.secondaryHeaderColor),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10,left: 24,right: 24,bottom: 50),
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(width: 1, color: Colors.grey.shade300),
            ),
            child: Row(
              children: [
                const Icon(Icons.search, color: Colors.grey),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    controller: searchController,
                    decoration: const InputDecoration(
                      hintText: "Search Product or Brand",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.mic_sharp, color: Colors.grey),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          // Adding GridView in a flexible layout
          SizedBox(height: 20),
          Container(
            height: 740,
            child: GridView.custom(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverQuiltedGridDelegate(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                // repeatPattern: QuiltedGridRepeatPattern.same,
                pattern: [
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(2, 1),
                  QuiltedGridTile(2, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 2),

                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                    (context, index) => Tile(index: index),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final int index;

  const Tile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    // Define your image paths
    List<String> images = [
      'assets/images/search1.png', // Replace with actual image paths
      'assets/images/search2.png',
      'assets/images/search3.png',
      'assets/images/search4.png',
      'assets/images/bannersearch.png',

    ];

    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey[500],
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          images[index % images.length], // Cycle through the images
          fit: BoxFit.cover,alignment: Alignment.center,
        ),
      ),

    );
  }
}
