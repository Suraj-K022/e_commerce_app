import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Single Custom Radio Button")),
        body: Center(
          child: CustomRadioButton(),
        ),
      ),
    );
  }
}

class CustomRadioButton extends StatefulWidget {
  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected; // Toggle the selection state
        });
      },
      child: Container(

        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          // border: Border.all(
          //   color: Get.theme.primaryColor,
          //   width: 1
          //
          // ),
          shape: BoxShape.circle,
          color: _isSelected ? Get.theme.primaryColor : Colors.grey[300], // Change color
        ),
        child: Icon(
          Icons.circle,
          size: 12,
          color: _isSelected ? Colors.white : Colors.white, // Change icon color
        ),
      ),
    );
  }
}
