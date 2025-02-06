import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionTile extends StatelessWidget {
  final String location;
  final String type;
  final Color typeColor;
  final String dateTime;
  final String amount;

  const TransactionTile({
    Key? key,
    required this.location,
    required this.type,
    required this.typeColor,
    required this.dateTime,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Row(
            children: [
              Text(
                '$location -',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Get.theme.secondaryHeaderColor,
                ),
              ),
              SizedBox(width: 8), // Added spacing
              Text(
                type,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: typeColor,
                ),
              ),
            ],
          ),
          subtitle: Text(
            dateTime,
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.grey[700],
            ),
          ),
          trailing: Text(
            amount,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.grey[700],
            ),
          ),
        ),
        Divider(color: Colors.grey, height: 0, thickness: 1),
      ],
    );
  }
}

// Usage Example:

