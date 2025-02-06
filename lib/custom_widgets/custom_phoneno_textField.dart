import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneNumberTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String countryCode;
  final VoidCallback? onCountryCodeTap;

  const PhoneNumberTextField({
    super.key,
    this.controller,
    this.countryCode = '+91',
    this.onCountryCodeTap,
  });

  @override
  _PhoneNumberTextFieldState createState() => _PhoneNumberTextFieldState();
}

class _PhoneNumberTextFieldState extends State<PhoneNumberTextField> {
  final FocusNode _focusNode = FocusNode();
  bool isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: isFocused ? Get.theme.primaryColor : Colors.grey), // Turns red when focused
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          // Small container before country code (for a flag)
          Container(
            width: 29,
            height: 18,
            child: Image.asset('assets/icons/flag.png'),
            margin: const EdgeInsets.only(left: 8),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(4),
            ),
          ),

          // Country Code Selection
          GestureDetector(
            onTap: widget.onCountryCodeTap,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(color: Colors.grey.shade300),
                ),
              ),
              child: Row(
                children: [

                  Text(
                    widget.countryCode,
                    style: GoogleFonts.poppins(
                      color:Get.theme.primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Icon(Icons.keyboard_arrow_down_sharp, color: Colors.grey),
                ],
              ),
            ),
          ),

          // Phone Number Input Field
          Expanded(
            child: TextField(
              controller: widget.controller,
              focusNode: _focusNode, // Attach focus node
              keyboardType: TextInputType.phone,
              style: GoogleFonts.poppins(color: Colors.grey.shade700, fontSize: 16, fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                hintText: 'Enter phone number',
                hintStyle: GoogleFonts.poppins(color: Colors.grey),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
