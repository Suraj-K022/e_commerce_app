import 'package:e_commerce_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_texts.dart';

class Contact {
  final String name;
  final String address;
  final String phone;
  final String mobile;

  Contact({required this.name, required this.address, required this.phone, required this.mobile});
}



class ContactCard extends StatelessWidget {
  final Contact contact;

  const ContactCard({Key? key, required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      // elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Poppins(contact.name,fontSize: 16, fontWeight: FontWeight.w500,),
                  SizedBox(height: 4),
                  Poppins(contact.address,fontSize: 14, color: Colors.grey[700],fontWeight: FontWeight.w400,),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Poppins("Phone : ", fontSize: 14, fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                      Poppins('${contact.phone}', fontSize: 14, fontWeight: FontWeight.w400,color: Colors.grey[700],),
                    ],
                  ),
                  Row(
                    children: [
                      Poppins("Mobile : ", fontSize: 14, fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
                      Poppins('${contact.mobile}', fontSize: 14, fontWeight: FontWeight.w400,color: Colors.grey[700],),
                    ],
                  ),
                ],
              ),
            ),
            Card(elevation: 2,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              child: InkWell(onTap: (){},
                child: CircleAvatar(
                  backgroundColor: Get.theme.cardColor,
                  radius: 22,
                  child: Image.asset(images.phonecall,height: 24,width: 24,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
