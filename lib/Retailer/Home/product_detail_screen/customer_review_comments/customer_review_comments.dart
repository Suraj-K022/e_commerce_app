import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../custom_widgets/custom_texts.dart';

class CustomerReviewComments extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
        Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,children: [

          Roboto('Customer Reviews(20)',fontWeight: FontWeight.w600,fontSize: 18,color: Get.theme.secondaryHeaderColor,),

          SizedBox(height: 10,),


          Column(
            children: [
              Row(spacing: 20,children: [

                //#1
                CircleAvatar(radius: 20,child:  Image.asset('assets/icons/profilepic1.png'),),


                //#2
                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                    Roboto('Shubham Rao',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                    Roboto('25/01/2023',fontSize: 14,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),



                  ],),
                ),

                //#3
                Row(spacing: 10,
                  children: [

                  //likebutton
                  Column(children: [
                    Icon(Icons.thumb_up_off_alt_outlined,size: 24,color: Colors.grey,),

                    Roboto('20',fontWeight: FontWeight.w400,fontSize: 14,color: Get.theme.secondaryHeaderColor,)


                  ],),

                  //dislikebutton
                  Column(children: [
                    Icon(Icons.thumb_down_off_alt_outlined,size: 24,color:Colors.grey,),
                    Roboto('20',fontWeight: FontWeight.w400,fontSize: 14,color: Get.theme.secondaryHeaderColor,)


                  ],),

                ],)




              ],),

              Container(padding: EdgeInsetsDirectional.fromSTEB(50, 10, 10, 10),
                child:

    Roboto('Bought medium size thought that i won\'t fit , but it fits me perfectly even though according to size chart i shouldn\'t. Misleading size chart .',fontWeight: FontWeight.w400,fontSize: 14,color: Get.theme.secondaryHeaderColor,maxLines: 10,)




                ,)
            ],
          ),
          SizedBox(height: 10,),


          Column(
            children: [
              Row(spacing: 20,children: [

                //#1
                CircleAvatar(radius: 20,child:  Image.asset('assets/icons/profilepic.png'),),


                //#2
                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                    Roboto('Shubham Rao',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                    Roboto('25/01/2023',fontSize: 14,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),



                  ],),
                ),

                //#3
                Row(spacing: 10,
                  children: [

                    //likebutton
                    Column(children: [
                      Icon(Icons.thumb_up_off_alt_outlined,size: 24,color: Colors.grey,),

                      Roboto('20',fontWeight: FontWeight.w400,fontSize: 14,color: Get.theme.secondaryHeaderColor,)


                    ],),

                    //dislikebutton
                    Column(children: [
                      Icon(Icons.thumb_down_off_alt_outlined,size: 24,color:Colors.grey,),
                      Roboto('20',fontWeight: FontWeight.w400,fontSize: 14,color: Get.theme.secondaryHeaderColor,)


                    ],),

                  ],)




              ],),

              Container(padding: EdgeInsetsDirectional.fromSTEB(50, 10, 10, 10),
                child:

                Roboto('Bought medium size thought that i won\'t fit , but it fits me perfectly even though according to size chart i shouldn\'t. Misleading size chart .',fontWeight: FontWeight.w400,fontSize: 14,color: Get.theme.secondaryHeaderColor,maxLines: 10,)




                ,)
            ],
          ),


          SizedBox(height: 10,),


          Column(
            children: [
              Row(spacing: 20,children: [

                //#1
                CircleAvatar(radius: 20,child:  Image.asset('assets/icons/profilepic2.png'),),


                //#2
                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                    Roboto('Shubham Rao',fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                    Roboto('25/01/2023',fontSize: 14,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),



                  ],),
                ),

                //#3
                Row(spacing: 10,
                  children: [

                    //likebutton
                    Column(children: [
                      Icon(Icons.thumb_up_off_alt_outlined,size: 24,color: Colors.grey,),

                      Roboto('20',fontWeight: FontWeight.w400,fontSize: 14,color: Get.theme.secondaryHeaderColor,)


                    ],),

                    //dislikebutton
                    Column(children: [
                      Icon(Icons.thumb_down_off_alt_outlined,size: 24,color: Colors.grey,),
                      Roboto('20',fontWeight: FontWeight.w400,fontSize: 14,color: Get.theme.secondaryHeaderColor,)


                    ],),

                  ],)




              ],),

              Container(padding: EdgeInsetsDirectional.fromSTEB(50, 10, 10, 10),
                child:

                Roboto('Bought medium size thought that i won\'t fit , but it fits me perfectly even though according to size chart i shouldn\'t. Misleading size chart .',fontWeight: FontWeight.w400,fontSize: 14,color: Get.theme.secondaryHeaderColor,maxLines: 10,)




                ,)
            ],
          ),


          
          
          



        ],);
  }
}