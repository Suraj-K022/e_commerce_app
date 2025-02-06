import 'package:e_commerce_app/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:e_commerce_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'list_tile_of_notification/List_tile.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Notification'),
      body:

      Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Poppins('Today',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w600,fontSize: 16),
          ),
          SizedBox(height: 10,),
          PromoTile(imageUrl: images.profilepic1, message: '50% OFF in Ultraboost All Puma Ltd Shoes!', time: '12:00 AM'),
          SizedBox(height: 10,),
          PromoTile(imageUrl: images.profilepic2, message: 'One Step ahead with new stylish collection every week', time: '12:00 AM'),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Poppins('10/11/24',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w600,fontSize: 16),
          ),
          PromoTile(imageUrl: images.profilepic2, message: 'One Step ahead with new stylish collection every week', time: '12:00 AM'),

          SizedBox(height: 10,),




        ],)




      ,
    );
  }
}
