import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:flutter/material.dart';

class CustomCategoryCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final Color backgroundColor;

  const CustomCategoryCard({
    Key? key,
    required this.title,
    required this.imageUrl,
    this.backgroundColor = const Color(0xFFD0E4EC), // Default to light blue
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(// Adjust width as needed
      padding: const EdgeInsets.only(left: 8,right: 8,bottom: 0,top: 12),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Poppins(
            title,
            textAlign: TextAlign.center,
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            maxLines: 2,
            ),

          const SizedBox(height: 14),
          Expanded(
            child: Image.asset(
              imageUrl,
              width: 81,height: 96,
              fit: BoxFit.contain,


            ),
          ),
        ],
      ),
    );
  }
}
