import 'package:e_commerce_app/custom_widgets/Custom_input_text_field.dart';
import 'package:e_commerce_app/custom_widgets/custom_buttons.dart';
import 'package:e_commerce_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../custom_widgets/custom_texts.dart';

class AddBankDetailScreeen extends StatefulWidget {
  const AddBankDetailScreeen({super.key});

  @override
  State<AddBankDetailScreeen> createState() => _AddBankDetailScreeenState();
}

class _AddBankDetailScreeenState extends State<AddBankDetailScreeen> {
  int visible=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 20),
        child:
        visible==0?CustomButton(text: 'Withdraw', onPressed: (){setState(() {
          visible=1;
        });},):visible==1?CustomButton(text: 'Back to Home', onPressed: (){
          Get.back();
        },):SizedBox()
      ),
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Get.theme.primaryColor,
        titleSpacing: 0,
        centerTitle: true,
        title: Poppins(
          'Add Bank Details',
          color: Get.theme.cardColor,
          fontWeight: FontWeight.w500,
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },

          child: Icon(Icons.arrow_back_ios_rounded, color: Get.theme.cardColor, size: 24),
        ),

      ),
      body: visible==0?ListView(padding: EdgeInsets.symmetric(horizontal: 24,vertical: 20),
      children: [
        Poppins('Account Holder Name',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
        SizedBox(height: 8,),
        CustomTextField(hintText: 'Account Holder Name'),
        SizedBox(height: 20,),
        Poppins('Account Number',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
        SizedBox(height: 8,),
        CustomTextField(hintText: 'Account Number'),
        SizedBox(height: 20,),

        Poppins('Bank Name',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
        SizedBox(height: 8,),
        CustomTextField(hintText: 'Enter Bank Name'),
        SizedBox(height: 20,),



        Poppins('IFSC Code',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
        SizedBox(height: 8,),
        CustomTextField(hintText: 'Enter Ifsc Code'),
        SizedBox(height: 20,),
        Poppins('Withdrawl Amount',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),
        SizedBox(height: 8,),
        CustomTextField(hintText: 'Amount'),
        SizedBox(height: 8,),
        Poppins('₹ 1000 will be left',color: Get.theme.primaryColor,fontSize: 12,fontWeight: FontWeight.w400,)
      ],):visible==1?Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
        Image.asset(images.successfulillustration,width: 288,height: 288,fit: BoxFit.cover,),
        SizedBox(height: 10,),
        Poppins('Request Successful',fontWeight: FontWeight.w500,fontSize: 20,color: Get.theme.secondaryHeaderColor,),
        SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Poppins('Your Amount will be received within 24 hrs ',textAlign: TextAlign.center,fontWeight: FontWeight.w400,fontSize: 16,color: Colors.grey[700],maxLines: 2,),
        ),
      ],),):SizedBox(),
    );
  }
}
