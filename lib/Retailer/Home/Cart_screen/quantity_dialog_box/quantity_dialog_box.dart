import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class QuantityDialogBox extends StatefulWidget{
  @override
  State<QuantityDialogBox> createState() => _QuantityDialogBoxState();
}

class _QuantityDialogBoxState extends State<QuantityDialogBox> {
  int quantity=1;
  @override
  Widget build(BuildContext context) {
    return
      AlertDialog(surfaceTintColor: Colors.transparent,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Quantity',style: GoogleFonts.roboto(color: Colors.grey[900],fontSize: 16,fontWeight: FontWeight.w600),),
            IconButton(onPressed: Get.back, icon: Icon(Icons.cancel,size: 20,color: Colors.grey[700],))
          ],

        ),
        actions: [
          Column(spacing: 20,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                IconButton(onPressed: (){
                  setState(() {
                    if (quantity > 1) quantity--;

                  });
                }, icon: Icon(Icons.remove,size: 24,color: Get.theme.secondaryHeaderColor,)),
                Container(color: Colors.grey[300],padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5,),child: Center(
                  child: Text('$quantity',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w600),),),),

                IconButton(onPressed: (){
                  setState(() {
                    quantity++;
                  });
                }, icon: Icon(Icons.add,size: 24,color: Get.theme.secondaryHeaderColor,))
              ],),
              Container(width: 90,height: 30,child: ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),backgroundColor: Get.theme.primaryColor),onPressed: (){Get.back();}, child: Center(child: Text('Save',style: GoogleFonts.roboto(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600)),)))
            ],
          )
        ],
      );
  }
}