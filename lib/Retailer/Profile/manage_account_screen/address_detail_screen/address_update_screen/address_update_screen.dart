
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';


import '../../../../../custom_widgets/custom_buttons.dart';
import '../../../../Home/Cart_screen/cart_screen.dart';
import '../address_detail_screen.dart';

class AddressUpdateScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
        Scaffold(backgroundColor: Get.theme.scaffoldBackgroundColor, appBar: AppBar(backgroundColor: Colors.black,centerTitle: true,leading:IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 24,)),
          title: Text('Address Update',style: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
            child: CustomButton(text: 'Update', onPressed: (){Get.to(AddressDetailScreen());}),
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