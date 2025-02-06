import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? action;
  final bool disableBack; // New parameter to remove back button

  const CustomAppBar({
    super.key,
    required this.title,
    this.action,
    this.disableBack = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      leading: disableBack
          ? null // Hides back button if `disableBack` is true
          : IconButton(
        icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
        onPressed: () {
          Get.back();
        },
      ),
      title: Text(
        title,
        style: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      centerTitle: true,
      actions: action != null ? [action!] : [],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
