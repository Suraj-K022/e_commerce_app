import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Poppins extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextDecoration? decoration; // New property for text decoration
  final Color? decorationColor; // New property for decoration color

  const Poppins(
      this.text, {
        super.key,
        this.fontSize,
        this.fontWeight,
        this.color,
        this.textAlign,
        this.maxLines,
        this.overflow,
        this.decoration, // Optional
        this.decorationColor, // Optional
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontSize ?? 16, // Default size
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? Colors.black, // Default color
        decoration: decoration ?? TextDecoration.none, // Default to no decoration
        decorationColor: decorationColor ?? Colors.black, // Default decoration color
      ),
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLines,
      overflow: overflow ?? TextOverflow.ellipsis,
    );
  }
}

class Roboto extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextDecoration? decoration; // New property for text decoration
  final Color? decorationColor; // New property for decoration color

  const Roboto(
      this.text, {
        super.key,
        this.fontSize,
        this.fontWeight,
        this.color,
        this.textAlign,
        this.maxLines,
        this.overflow,
        this.decoration, // Optional
        this.decorationColor, // Optional
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        fontSize: fontSize ?? 16, // Default size
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? Colors.black, // Default color
        decoration: decoration ?? TextDecoration.none, // Default to no decoration
        decorationColor: decorationColor ?? Colors.black, // Default decoration color
      ),
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLines,
      overflow: overflow ?? TextOverflow.ellipsis,
    );
  }
}
