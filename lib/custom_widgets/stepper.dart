import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stepper/smart_stepper.dart';

class SmartStepperExample extends StatefulWidget {
  final int? step;
  const SmartStepperExample({super.key, this.step});

  @override
  State<SmartStepperExample> createState() => _SmartStepperExampleState();
}

class _SmartStepperExampleState extends State<SmartStepperExample> {

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          const SizedBox(height: 12),
             SmartStepper(
               currentStepColor: Get.theme.cardColor,
               lineWidth: 130,
            currentStep: int.parse(widget.step.toString()),
            totalSteps: 3,
            isTextShowing: false,
            borderWidth: 10,
               currentBorderColor: Get.theme.primaryColor,
               completeBorderColor: Get.theme.primaryColor,
            completeStepColor: Get.theme.primaryColor,
            inactiveBorderColor: Get.theme.cardColor,
            inactiveStepColor: Get.theme.cardColor,



            lineHeight: 5,
            onStepperTap: (value) {

            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Poppins('Cart',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.secondaryHeaderColor),
                Poppins('Address',fontWeight: FontWeight.w500,fontSize: 14,color:Get.theme.secondaryHeaderColor),
                Poppins('Payment',fontWeight: FontWeight.w500,fontSize: 14,color: Get.theme.secondaryHeaderColor),
              ],
            ),
          )


        ],
      );

  }
}