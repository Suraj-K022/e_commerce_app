import 'package:e_commerce_app/Retailer/Home/Cart_screen/cart_screen.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomWishlistCard extends StatefulWidget {
  final String imageUrl;
  final String? text; // Optional text
  final String titleText; // Renamed for clarity
  final String dynamicText1; // First dynamic text
  final String dynamicText2; // Second dynamic text
  final String star; // Star rating text

  const CustomWishlistCard({
    super.key,
    required this.imageUrl,
    this.text,
    required this.titleText,
    required this.dynamicText1,
    required this.dynamicText2,
    required this.star,
  });

  @override
  _CustomWishlistCardState createState() => _CustomWishlistCardState();
}

class _CustomWishlistCardState extends State<CustomWishlistCard> {
  bool isHeartSelected = false; // State to track the heart icon selection

  void _toggleHeartSelection() {
    setState(() {
      isHeartSelected = !isHeartSelected; // Toggle the state on click
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Custom card container
        Container(
          height: 163,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            image: DecorationImage(
              image: AssetImage(widget.imageUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // Container with text on the left-top
              if (widget.text != null)
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Get.theme.primaryColor,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Text(
                      widget.text!,
                      style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

              // Heart Icon at the top-right corner
              Positioned(
                top: 10,
                right: 10,
                child: GestureDetector(
                  onTap: _toggleHeartSelection,
                  child: Icon(
                    Icons.favorite,
                    color: isHeartSelected ? Colors.red : Colors.white,
                    size: 24,
                  ),
                ),
              ),
            ],
          ),
        ),

        // Title Text below the container
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Roboto(
            widget.titleText,
            fontWeight: FontWeight.w500,
            color: Get.theme.secondaryHeaderColor,
            fontSize: 14,
          ),
        ),

        // Row for dynamic text 1, dynamic text 2, and star rating
        Padding(
          padding: const EdgeInsets.only(top: 5.0, bottom: 5),
          child: Container(
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Row for dynamic text 1 and dynamic text 2
                Row(
                  children: [
                    Roboto(
                      widget.dynamicText1,
                      fontWeight: FontWeight.w500,
                      color: Get.theme.secondaryHeaderColor,
                      fontSize: 14,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Get.theme.secondaryHeaderColor,
                    ),
                    SizedBox(width: 5),
                    Roboto(
                      widget.dynamicText2,
                      fontWeight: FontWeight.w500,
                      color: Get.theme.primaryColor,
                      fontSize: 14,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Get.theme.primaryColor,
                    ),
                  ],
                ),

                // Row for the star icon and star text
                Row(
                  children: [
                    Icon(Icons.star_outlined, color: Colors.yellow, size: 20),
                    Text(
                      widget.star,
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        // Red "Add To Cart" Button
        InkWell(onTap: () {
          Get.to(CartScreen());
        },
          child: Container(
            width: double.infinity, // Full width
            padding: EdgeInsets.symmetric(vertical: 12),
            color: Get.theme.primaryColor, // Red background color
            alignment: Alignment.center,
            child: Text(
              "Add To Cart",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
