
import 'package:e_commerce_app/custom_widgets/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../../../../custom_widgets/custom_buttons.dart';
import '../../../../Home/Cart_screen/cart_screen.dart';
import '../address_detail_screen.dart';

class AddressAddressScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(backgroundColor: Get.theme.scaffoldBackgroundColor, 
        appBar: CustomAppBar(title: 'Add Address'),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
          child: CustomButton(text: 'Save', onPressed: (){Get.to(AddressDetailScreen());}),
        ),
        body: ListView(
          children: [
            SizedBox(height: 10,),
            ContactInfo()
          ],
        ),
      );
  }
}