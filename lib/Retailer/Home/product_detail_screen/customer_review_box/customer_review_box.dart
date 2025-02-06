import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerReviewBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return

    Column(mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [

      Roboto('Customer Rating',fontWeight: FontWeight.w600,fontSize: 18,color: Get.theme.secondaryHeaderColor,),
      Container(height: 270,width: Get.width,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white),
        child: Column(
          children: [
            Expanded(
                child: Expanded(
                    child: Row(children: [
                Expanded(child: Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(8)),padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 10),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Row(spacing: 10,
                      children: [Text('2.5',style: GoogleFonts.roboto(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500)),
                        Icon(Icons.star,color: Colors.blue[300],)
                      ],
                    ),
                    Text('120 Verified Buyers',style: GoogleFonts.roboto(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w400)),
                    Text('What Customers Said',style: GoogleFonts.roboto(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500))
                  ],
                  ),

                )),
                Expanded(child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 10),
                  child:Column(
                    children: [
                      Row(spacing: 5,children: [Text('5',style: GoogleFonts.roboto(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400)), Icon(Icons.star,color: Colors.blue[300],size: 20,),SizedBox(height: 4,width:100, child: LinearProgressIndicator(value: 0.5, backgroundColor: Colors.grey[500],valueColor: AlwaysStoppedAnimation(Colors.green[300]),),),Text('54',style: GoogleFonts.roboto(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400))],),
                      Row(spacing: 5,children: [Text('4',style: GoogleFonts.roboto(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400)), Icon(Icons.star,color: Colors.blue[300],size: 20,),SizedBox(height: 4,width:100, child: LinearProgressIndicator(value: 0.5, backgroundColor: Colors.grey[500],valueColor: AlwaysStoppedAnimation(Colors.green[300]),),),Text('32',style: GoogleFonts.roboto(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400))],),
                      Row(spacing: 5,children: [Text('3',style: GoogleFonts.roboto(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400)), Icon(Icons.star,color: Colors.blue[300],size: 20,),SizedBox(height: 4,width:100, child: LinearProgressIndicator(value: 0.5, backgroundColor: Colors.grey[500],valueColor: AlwaysStoppedAnimation(Colors.blue[300]),),),Text('35',style: GoogleFonts.roboto(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400))],),
                      Row(spacing: 5,children: [Text('2',style: GoogleFonts.roboto(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400)), Icon(Icons.star,color: Colors.blue[300],size: 20,),SizedBox(height: 4,width:100, child: LinearProgressIndicator(value: 0.5, backgroundColor: Colors.grey[500],valueColor: AlwaysStoppedAnimation(Colors.yellow[300]),),),Text('24',style: GoogleFonts.roboto(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400))],),
                      Row(spacing: 5,children: [Text('1',style: GoogleFonts.roboto(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400)), Icon(Icons.star,color: Colors.blue[300],size: 20,),SizedBox(height: 4,width:100, child: LinearProgressIndicator(value: 0.5, backgroundColor: Colors.grey[500],valueColor: AlwaysStoppedAnimation(Colors.red[300]),),),Text('15',style: GoogleFonts.roboto(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400))],),

                    ],
                  ) ,)),
              ],
            ))),








            Expanded(
                child: Container(width: Get.width,decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(8)),padding: EdgeInsets.only(
                 top: 0, left: 10,right: 10,bottom: 10
                ),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,spacing: 5,
                children: [
                Text('Fit',style: GoogleFonts.roboto(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w400)),
                Row(spacing: 10,
                  children: [
                  SizedBox(height: 4,width: 150,
                    child: LinearProgressIndicator(
                      value: 0.8, // Progress value between 0.0 and 1.0
                      backgroundColor: Colors.grey[200], // Background color of the progress bar
                      valueColor: AlwaysStoppedAnimation(Colors.blue), // Color of the progress
                    ),
                  ),
                  Text('Just Right (80%)',style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.w500),)
                ],),
                   Text('Thickness',style: GoogleFonts.roboto(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w400)),
                Row(spacing: 10,
                  children: [
                  SizedBox(height: 4,width: 150,
                    child: LinearProgressIndicator(
                      value: 0.6, // Progress value between 0.0 and 1.0
                      backgroundColor: Colors.grey[200], // Background color of the progress bar
                      valueColor: AlwaysStoppedAnimation(Colors.blue), // Color of the progress
                    ),
                  ),
                  Text('Medium(60%)',style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.w500),)
                ],),
                  Text('View Details',style:GoogleFonts.roboto(color: Colors.red,fontWeight: FontWeight.w600) ,)


              ],),)),
          ],
        ),),
        SizedBox(height: 20,)


    ],);
  }
}