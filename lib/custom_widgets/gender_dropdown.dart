import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenderDropdown extends StatefulWidget {
  @override
  _GenderDropdownState createState() => _GenderDropdownState();
}

class _GenderDropdownState extends State<GenderDropdown> {
  String? selectedGender = 'Male'; // Default value

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey), // Grey border
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButtonFormField<String>(
        value: selectedGender,
        onChanged: (newValue) {
          setState(() {
            selectedGender = newValue;
          });
        },
        decoration: InputDecoration(
          hintText: 'Select Gender',
          border: InputBorder.none,
        ),
        icon: Icon(Icons.keyboard_arrow_down,size: 24, color: Colors.grey),
        dropdownColor: Colors.white,

        style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.grey),



        items: ['Male', 'Female', 'Other']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}