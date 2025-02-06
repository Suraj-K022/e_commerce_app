import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSwitch extends StatefulWidget {
  final String? text ;

  CustomSwitch(this.text);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSwitched = !isSwitched;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 40,
        height: 24,
        decoration: BoxDecoration(
          color: isSwitched==true?Colors.white:Colors.grey, // Background color
          borderRadius: BorderRadius.circular(12), // Adjusted for proportion
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: isSwitched ? 20 : 3, // Adjusted for new size
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: 18, // Adjusted size for the toggle circle
                height: 18,
                decoration: BoxDecoration(
                  color: isSwitched==true?Get.theme.primaryColor:Colors.grey[800], // Circle color
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    widget.text ?? "",
                    style: TextStyle(
                      fontSize: 10, // Adjusted text size for smaller button
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class OnCustomSwitch extends StatefulWidget {
  @override
  _OnCustomSwitchState createState() => _OnCustomSwitchState();
}

class _OnCustomSwitchState extends State<OnCustomSwitch> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSwitched = !isSwitched;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 40,
        height: 24,
        decoration: BoxDecoration(
          color: isSwitched ? Get.theme.primaryColor : Colors.grey[400], // Background color
          borderRadius: BorderRadius.circular(12), // Rounded edges
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: isSwitched ? 20 : 3, // Toggle position
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: 18, // Circle size
                height: 18,
                decoration: BoxDecoration(
                  color: isSwitched ? Colors.white : Colors.grey[600], // Circle color
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    isSwitched ? "ON" : "OFF", // Dynamic text
                    style: TextStyle(
                      fontSize: 8, // Adjusted font size to fit
                      color: isSwitched ? Colors.red : Colors.white, // Text color change
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
