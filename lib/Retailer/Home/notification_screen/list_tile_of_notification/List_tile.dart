import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class PromoTile extends StatelessWidget {
  final String imageUrl;
  final String? promoCode;
  final String message;
  final String time;
  final Color promoColor;
  final bool showIndicator;

  const PromoTile({
    Key? key,
    required this.imageUrl,
    this.promoCode,
    required this.message,
    required this.time,
    this.promoColor = const Color(0xFFB0C700), // Default green shade
    this.showIndicator = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(contentPadding: EdgeInsets.symmetric(horizontal: 24),
      tileColor: Get.theme.cardColor,
      leading: Container(
       height: 50,width: 50,
        child: Image.asset(imageUrl,height: 50,width: 50,), // Fixed
      ),
      title: RichText(
        text: TextSpan(
          style:GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16),
          children: [
            const TextSpan(
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: promoCode,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Get.theme.primaryColor,
              ),
            ),
            TextSpan(
              text: " $message",
              style:GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16),
            ),
          ],
        ),
      ),

      trailing: Column(spacing: 8,
        mainAxisAlignment: MainAxisAlignment.start, // Centered properly
        children: [
          Text(
            time,
            style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400, color: Colors.grey),
          ),
          if (showIndicator) ...[
            const SizedBox(height: 4), // Corrected spacing
            CircleAvatar(
              radius: 5,
              backgroundColor: promoColor,
            ),
          ],
        ],
      ),
    );
  }
}
