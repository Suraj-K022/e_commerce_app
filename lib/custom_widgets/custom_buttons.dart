

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


import '../dimensions/dimensions.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final double? width;
  final double? radius;
  final double? height;
  final double? padding;
  final double? fontSize;
  final Color? color;
  final Widget? row;

  const CustomButton(
      {super.key,
        required this.text,
        required this.onPressed,
        this.width,
        this.radius,
        this.padding,
        this.fontSize,
        this.height,
        this.color,
        this.row});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: height ?? 48,
        width: width ?? Get.width,
        padding: EdgeInsets.all(padding ?? Dimensions.paddingSizeSmall),
        decoration: BoxDecoration(
            color: color ?? Get.theme.primaryColor,
            borderRadius: BorderRadius.circular(radius ?? 8)),
        child: Center(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w500,

              ),
            )),
      ),
    );
  }
}
