import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeDialogBox extends StatefulWidget{
  @override
  State<SizeDialogBox> createState() => _SizeDialogBoxState();
}

class _SizeDialogBoxState extends State<SizeDialogBox> {

  int ?selected;
  @override
  Widget build(BuildContext context) {
    return
        AlertDialog(surfaceTintColor: Colors.transparent,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Size',style: GoogleFonts.roboto(color: Get.theme.secondaryHeaderColor,fontSize: 16,fontWeight: FontWeight.w600),),
              IconButton(onPressed: Get.back, icon: Icon(Icons.cancel,size: 20,color: Colors.grey[700],))
            ],

          ),
          actions: [
            Column(spacing: 20,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center,spacing: 10,
                  children: [
                    InkWell(onTap: (){setState(() {selected=0;});},child: CircleAvatar(radius: 20,backgroundColor: selected==0?Get.theme.primaryColor:Colors.white,child: Center(child: Text('S',style: GoogleFonts.roboto(color: selected==0?Colors.white:Get.theme.primaryColor,fontSize: 16,fontWeight: FontWeight.w600)),),)),
                    InkWell(onTap: (){setState(() {selected=1;});},child: CircleAvatar(radius: 20,backgroundColor: selected==1?Get.theme.primaryColor:Colors.white,child: Center(child: Text('M',style: GoogleFonts.roboto(color: selected==1?Colors.white:Get.theme.primaryColor,fontWeight: FontWeight.w600)),),)),
                    InkWell(onTap: (){setState(() {selected=2;});},child: CircleAvatar(radius: 20,backgroundColor: selected==2?Get.theme.primaryColor:Colors.white,child: Center(child: Text('L',style: GoogleFonts.roboto(color: selected==2?Colors.white:Get.theme.primaryColor,fontWeight: FontWeight.w600)),),)),
                    InkWell(onTap: (){setState(() {selected=3;});},child: CircleAvatar(radius: 20,backgroundColor: selected==3?Get.theme.primaryColor:Colors.white,child: Center(child: Text('XL',style: GoogleFonts.roboto(color: selected==3?Colors.white:Get.theme.primaryColor,fontWeight: FontWeight.w600)),),)),
                  ],


                ),
                Container(width: 90,height: 30,child: ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),backgroundColor: Get.theme.primaryColor),onPressed: (){Get.back();}, child: Center(child: Text('Save',style: GoogleFonts.roboto(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600)),)))
              ],
            )
          ],
        );
  }
}