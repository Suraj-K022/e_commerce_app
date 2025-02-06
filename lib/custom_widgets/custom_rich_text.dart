import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRichText extends StatelessWidget {
  final String firstText;
  final String secondText;


  const CustomRichText({
    Key? key,
    required this.firstText,
    required this.secondText,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: firstText,
        style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w400,color: Get.theme.secondaryHeaderColor),
        children: [
          TextSpan(
            text: secondText,
            style:GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
