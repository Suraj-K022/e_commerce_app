import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDiscountCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String discount;
  final String buttonText;
  final VoidCallback onTap;

  const CustomDiscountCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.discount,
    required this.buttonText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      elevation: 0,
      surfaceTintColor: Get.theme.scaffoldBackgroundColor,
      child: Column(spacing: 4,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10,),
          ClipRRect(
            // borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
            child: Image.asset(
              imageUrl,
              width: 143,
              height: 184,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Text(textAlign: TextAlign.center,
                title,
                style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8),
              Text(
                discount,
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),

              ),
              SizedBox(height: 8),
              GestureDetector(
                onTap: onTap,
                child: Text(
                  buttonText,
                 style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600,color: Get.theme.primaryColor),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
