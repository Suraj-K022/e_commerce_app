
import 'package:e_commerce_app/Retailer/Home/Cart_screen/quantity_dialog_box/quantity_dialog_box.dart';
import 'package:e_commerce_app/Retailer/Home/Cart_screen/size_dialog_box/size_dialog_box.dart';
import 'package:e_commerce_app/custom_widgets/Custom_input_text_field.dart';
import 'package:e_commerce_app/custom_widgets/custom_appbar.dart';
import 'package:e_commerce_app/custom_widgets/custom_check_box.dart';
import 'package:e_commerce_app/custom_widgets/custom_radio_button.dart';
import 'package:e_commerce_app/custom_widgets/custom_rich_text.dart';
import 'package:e_commerce_app/custom_widgets/custom_texts.dart';
import 'package:e_commerce_app/utils/images.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


import '../../../custom_widgets/custom_buttons.dart';
import '../../../custom_widgets/stepper.dart';
import '../paymentMethodScreen/card_payment_screen/card_payment_screen.dart';
import '../paymentMethodScreen/upi_payment_screen/upi_payment_screen.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int viewScreen = 0;
  Widget ?currentWidget;


  void switchWidget() {
    setState(() {
      viewScreen = (viewScreen + 1) % 4; // Cycle between 0, 1, and 2
    });
  }



  @override
  Widget build(BuildContext context) {

    if (viewScreen == 0) {
      currentWidget = CartWidget();
    } else if (viewScreen == 1) {
      currentWidget = ContactInfo();
    } else if (viewScreen == 2) {
      currentWidget =  AddressInfo();
    }
    else {
      currentWidget =PaymentMethodWidget();
    }
    return Scaffold(
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      appBar:
          
          CustomAppBar( title:viewScreen==0?'Cart':viewScreen==1?'Address':viewScreen==2?'Address':viewScreen==3?'Payment':'Invalid',),




      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: viewScreen >= 0 && viewScreen <= 2
            ? CustomButton(
          text: viewScreen == 0
              ? 'Place Order'
              : viewScreen == 1
              ? 'Add Address'
              : 'Continue',
          onPressed: switchWidget,
        )
            : SizedBox.shrink(), // Hides the button when the condition is not met
      ),
      body: ListView(shrinkWrap: true,

        children:
        [
          SizedBox(height: 100, child: SmartStepperExample(
            step: viewScreen == 0
                ? 1
                : viewScreen == 1
                ? 2
                : viewScreen == 2
                ? 2
                : viewScreen == 3
                ? 3
                : 0,
          )
          ),
    viewScreen == 0
    ? CartWidget()
        : viewScreen == 1
    ? ContactInfo()
        : viewScreen == 2
    ? AddressInfo()
        : viewScreen == 3
    ?PaymentMethodWidget()
        : Center(child: Text('Invalid Screen'),)

        ],
      ),
    );
  }
}



class CartWidget extends StatefulWidget{
  @override
  State<CartWidget> createState() => _CartWidgetState();
}
class _CartWidgetState extends State<CartWidget> {


  @override
  Widget build(BuildContext context) {
    return

        Column(children: [

          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 34,
            decoration: BoxDecoration(
                color: Color.fromRGBO(239, 243, 217, 1.0),
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 24,
                  width: 24,
                  child: Image.asset(images.discount),
                ),


                Poppins('Your Saving ₹400rs on  this order',fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor,),

              ],
            ),
          ),
          Container(
            color: Get.theme.cardColor,
            height: 38,
            padding: EdgeInsets.symmetric(horizontal: 24),
            margin: EdgeInsets.symmetric(vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    InkWell(
                        onTap: () {},
                        child: SizedBox(
                          height: 20,
                          width: 20,
                          child: CustomCheckBox()
                        )),
                    Text('2/2 ITEMS SELECTED (₹1,400)',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Get.theme.secondaryHeaderColor))
                  ],
                ),
                Row(
                  spacing: 15,
                  children: [
                    SizedBox(
                        height: 24,
                        width: 24,
                        child: Image.asset(images.share,color: Get.theme.secondaryHeaderColor,)),
                    SizedBox(
                        height: 24,
                        width: 24,
                        child: Image.asset(images.trash,color: Get.theme.secondaryHeaderColor,))
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(


              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        Container(
                          width: 110,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[400],
                          ),
                          child: Stack(
                            children: [
                              Image.asset(
                                images.womenwearslide1,width: 110,height: 130,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                top: 10,
                                left: 10,
                                child: CustomCheckBox(),
                              )
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 5,
                          children: [
                            Text(
                              'H&M',
                              style: GoogleFonts.poppins(
                                  color: Get.theme.secondaryHeaderColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Running T-Shirt',
                              style: GoogleFonts.roboto(
                                  color: Get.theme.secondaryHeaderColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            Row(
                              spacing: 10,
                              children: [
                                Text(
                                  '₹1,000',
                                  style: GoogleFonts.roboto(
                                      color: Colors.grey[600],
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.lineThrough,decorationColor: Colors.grey[600],),
                                ),
                                Text(
                                  '₹800',
                                  style: GoogleFonts.roboto(
                                      color: Get.theme.primaryColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Row(
                              spacing: 10,
                              children: [
                                InkWell(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return SizeDialogBox();
                                        },
                                      );
                                    },
                                    child: Container(
                                      height: 26,
                                      width: 94,
                                      color: Colors.grey[300],
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Text('Size : XL',
                                              style: GoogleFonts.poppins(
                                                  color:  Get.theme.secondaryHeaderColor,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500)),
                                          Container(
                                            child: Icon(
                                              Icons.keyboard_arrow_down_sharp,
                                              size: 24,
                                              color:  Get.theme.secondaryHeaderColor,
                                            ),
                                          )
                                        ],
                                      ),
                                    )),
                                InkWell(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return QuantityDialogBox();
                                        },
                                      );
                                    },
                                    child: Container(
                                      height: 26,
                                      width: 94,
                                      color: Colors.grey[300],
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Text('Qty : 1',
                                              style: GoogleFonts.poppins(
                                                  color:  Get.theme.secondaryHeaderColor,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500)),
                                          Container(
                                            child: Icon(
                                              Icons.keyboard_arrow_down_sharp,
                                              size: 24,
                                              color:  Get.theme.secondaryHeaderColor,
                                            ),
                                          )
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                            Row(
                              spacing: 5,
                              children: [
                                Container(
                                  height: 24,
                                  width: 24,
                                  child:
                                  Image.asset(images.getback,color:  Get.theme.secondaryHeaderColor,),
                                ),
                                Text(
                                  '15 days return Available',
                                  style: GoogleFonts.poppins(
                                      color: Get.theme.secondaryHeaderColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                        height: 24,
                        width: 24,
                        child: Image.asset(images.trash,color: Colors.grey,))
                  ],
                ),

                Divider(
                  color: Colors.grey,
                  height: 30,
                  thickness: 1,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        Container(
                          width: 110,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[400],
                          ),
                          child: Stack(
                            children: [
                              Image.asset(
                                images.womenwear5,
                                fit: BoxFit.cover,
                                height: 130,width: 110,
                              ),
                              Positioned(
                                top: 10,
                                left: 10,
                                child: CustomCheckBox(),
                              )
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 5,
                          children: [
                            Text(
                              'H&M',
                              style: GoogleFonts.poppins(
                                  color:  Get.theme.secondaryHeaderColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Running T-Shirt',
                              style: GoogleFonts.roboto(
                                  color:  Get.theme.secondaryHeaderColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            Row(
                              spacing: 10,
                              children: [
                                Text(
                                  '₹1,000',
                                  style: GoogleFonts.roboto(
                                      color: Colors.grey[600],
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.lineThrough,decorationColor: Colors.grey[600]),
                                ),
                                Text(
                                  '₹800',
                                  style: GoogleFonts.roboto(
                                      color:Get.theme.primaryColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Row(
                              spacing: 10,
                              children: [
                                InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 26,
                                      width: 94,
                                      color: Colors.grey[300],
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Text('Size : XL',
                                              style: GoogleFonts.poppins(
                                                  color: Get.theme.secondaryHeaderColor,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500)),
                                          Container(
                                            child: Icon(
                                              Icons.keyboard_arrow_down_sharp,
                                              size: 24,
                                              color: Get.theme.secondaryHeaderColor,
                                            ),
                                          )
                                        ],
                                      ),
                                    )),
                                InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 26,
                                      width: 94,
                                      color: Colors.grey[300],
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Text('Qty : 1',
                                              style: GoogleFonts.poppins(
                                                  color: Get.theme.secondaryHeaderColor,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500)),
                                          Container(
                                            child: Icon(
                                              Icons.keyboard_arrow_down_sharp,
                                              size: 24,
                                              color:  Get.theme.secondaryHeaderColor,
                                            ),
                                          )
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                            Row(
                              spacing: 5,
                              children: [
                                Container(
                                  height: 24,
                                  width: 24,
                                  child:
                                  Image.asset(images.getback,color:  Get.theme.secondaryHeaderColor,),
                                ),
                                Text(
                                  '15 days return Available',
                                  style: GoogleFonts.poppins(
                                      color:  Get.theme.secondaryHeaderColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                        height: 24,
                        width: 24,
                        child: Image.asset(images.trash,color: Colors.grey,))
                  ],
                ),

                //Couponsection//

                Align(alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Text(
                      'Coupon',
                      style: GoogleFonts.poppins(
                          color:  Get.theme.secondaryHeaderColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,),
                    ),
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color:Get.theme.primaryColor,
                        width: 1,
                      )),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Extra ₹200 OFF',
                        style: GoogleFonts.roboto(
                            color: Get.theme.secondaryHeaderColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Rs. 250 off on minimum purchase of Rs.400 ',
                        style: GoogleFonts.roboto(
                            color: Colors.grey[600],
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'AVFDR10',
                                style: GoogleFonts.roboto(
                                    color: Get.theme.primaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.copy,
                                    size: 20,
                                    color: Colors.grey[600],
                                  ))
                            ],
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(50, 30),
                                  backgroundColor: Get.theme.primaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                              child: Text('Apply',
                                  style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400)))
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Get.theme.primaryColor,
                        width: 1,
                      )),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Extra ₹200 OFF',
                        style: GoogleFonts.roboto(
                            color: Get.theme.secondaryHeaderColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Rs. 250 off on minimum purchase of Rs.400 ',
                        style: GoogleFonts.roboto(
                            color: Colors.grey[600],
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'AVFDR10',
                                style: GoogleFonts.roboto(
                                    color: Get.theme.primaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.copy,
                                    size: 20,
                                    color: Colors.grey[600],
                                  ))
                            ],
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(50, 30),
                                  backgroundColor:  Get.theme.primaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                              child: Text('Apply',
                                  style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400)))
                        ],
                      )
                    ],
                  ),
                ),

                //priceSection//
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    'Price Detail (2 Items)',
                    style: GoogleFonts.poppins(
                        color: Get.theme.secondaryHeaderColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),

                Column(
                  spacing: 5,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total MRP',
                          style: GoogleFonts.poppins(
                              color: Get.theme.secondaryHeaderColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '₹4,000',
                          style: GoogleFonts.poppins(
                              color: Get.theme.secondaryHeaderColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Discount on MRP',
                          style: GoogleFonts.poppins(
                              color: Get.theme.secondaryHeaderColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '- ₹2,000',
                          style: GoogleFonts.poppins(
                              color:Color(0xFF3B907B),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Platform Fee',
                          style: GoogleFonts.poppins(
                              color: Get.theme.secondaryHeaderColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Free',
                          style: GoogleFonts.poppins(
                              color: Color(0xFF3B907B),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'TShipping Fee',
                          style: GoogleFonts.poppins(
                              color: Get.theme.secondaryHeaderColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),





                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '₹50',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Get.theme.secondaryHeaderColor,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor:  Get.theme.secondaryHeaderColor,
                                ),
                              ),
                              TextSpan(
                                text: ' Free',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF3B907B),
                                ),
                              ),
                            ],
                          ),
                        )

                      ],
                    ),
                    Divider(
                      height: 5,
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Amount',
                          style: GoogleFonts.poppins(
                              color: Get.theme.secondaryHeaderColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '₹2,000 ',
                          style: GoogleFonts.poppins(
                              color: Get.theme.secondaryHeaderColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),











                  ],
                )
              ],



            ),
          )



        ],);
  }
}












class ContactInfo extends StatefulWidget{
  @override
  State<ContactInfo> createState() => _ContactInfoState();

}
class _ContactInfoState extends State<ContactInfo> {
  bool isChecked = true;
  int select = 0;
  int screen=0;
  int? value;

  @override
  Widget build(BuildContext context) {
    return

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Poppins('Name',color: Get.theme.secondaryHeaderColor,fontSize: 16,fontWeight: FontWeight.w500,),
            SizedBox(height: 8,),
            CustomTextField(hintText: 'Enter Name'),

            SizedBox(
              height: 20,
            ),

            Poppins('Phone Number',color: Get.theme.secondaryHeaderColor,fontSize: 16,fontWeight: FontWeight.w500,),
            SizedBox(height: 8,),
            CustomTextField(hintText: 'Phone Number'),

            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Poppins('PinCode',color: Get.theme.secondaryHeaderColor,fontSize: 16,fontWeight: FontWeight.w500,),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 48,
                      width: 170,
                      child: CustomTextField(hintText: 'Pin Code'),
                    )
                  ],
                ),
                Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Poppins('State',color: Get.theme.secondaryHeaderColor,fontSize: 16,fontWeight: FontWeight.w500,),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 48,
                      width: 170,
                      child: CustomTextField(hintText: 'State'),
                    )
                  ],
                )
              ],
            ),

            //houseno//

            SizedBox(
              height: 20,
            ),
            Poppins('House No',color: Get.theme.secondaryHeaderColor,fontSize: 16,fontWeight: FontWeight.w500,),
            SizedBox(height: 8,),
            CustomTextField(hintText: 'House No'),

            //locality//

            SizedBox(
              height: 20,
            ),
            Poppins('Locality',color: Get.theme.secondaryHeaderColor,fontSize: 16,fontWeight: FontWeight.w500,),
            SizedBox(height: 8,),
            CustomTextField(hintText: 'Locality'),

            SizedBox(
              height: 10,
            ),
            Row(spacing: 10,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomCheckBox(),
                Text('Save Address',
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Get.theme.secondaryHeaderColor))
              ],
            ),

            SizedBox(height: 20,),

            Row(
              spacing: 10,
              children: [
                InkWell(
                    onTap: () {
                      setState(() {
                        select = 0;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 18, vertical: 5),
                      decoration: BoxDecoration(
                          color: select == 0 ? Get.theme.primaryColor : Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: Text('Home',
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: select == 0
                                      ? Colors.white
                                      : Get.theme.primaryColor))),
                    )),
                InkWell(
                    onTap: () {

                      setState(() {
                        select = 1;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 18, vertical: 5),
                      decoration: BoxDecoration(
                          color: select == 1 ? Get.theme.primaryColor : Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: Text('Office',
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: select == 1
                                      ? Colors.white
                                      : Get.theme.primaryColor))),
                    )),
              ],
            ),

            select == 1
                ? ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  minTileHeight: 10,
                  horizontalTitleGap: 10,
                  title: Poppins('10 to 7 Monday to Friday',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,fontSize: 14,),
                  

                  leading:
                  CustomRadioButton()
                ),
          ListTile(
              minTileHeight: 10,
              horizontalTitleGap: 10,
              title: Poppins('10 to 6 Monday to Friday',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,fontSize: 14,),
              leading: CustomRadioButton()
          ),
                ListTile(
                    minTileHeight: 10,
                    horizontalTitleGap: 10,
                    title: Poppins('Open to Saturday',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,fontSize: 14,),
                    leading: CustomRadioButton()
                ),
                ListTile(
                    minTileHeight: 10,
                    horizontalTitleGap: 10,
                    title: Poppins('Open to Sunday',color: Get.theme.secondaryHeaderColor,fontWeight: FontWeight.w500,fontSize: 14,),
                    leading: CustomRadioButton()
                ),
              ],
            )
                : SizedBox(),
          ],
        ),
      );

  }
}





class AddressInfo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      ListView(shrinkWrap: true,padding: EdgeInsets.symmetric(horizontal: 24),
        children: [

          Row(mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            children: [
              Poppins('Mayur Soni' ,fontSize: 16,fontWeight: FontWeight.w500,color: Get.theme.secondaryHeaderColor,),
              TextButton(onPressed: (){}, child: Poppins('Home' ,color: Get.theme.primaryColor,fontWeight: FontWeight.w600,fontSize: 14,)),
            ],
          ),
          Column(spacing: 2,mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Poppins('Kalani Nagar house no 2 Indore',fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),
              Poppins('Near BSF Border',fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),
              Poppins('Indore, Madhya Pradesh 41254',fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),


              RichText(
                text: TextSpan(
                  text: 'Mobile : '
                  ,style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),
                  children: [
                    TextSpan(
                      text: '7974944974'

                      ,style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600, color: Get.theme.secondaryHeaderColor),

                    ),
                  ],
                ),
              ),



            ],),
          SizedBox(height: 20,),
          InkWell(onTap: (){},child: Container(height: 48,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width: 1,color: Get.theme.primaryColor)),child: Center(child:Poppins('Change or add address',fontSize: 16, fontWeight: FontWeight.w500, color: Get.theme.primaryColor),),))
        ],




      );
  }
}


class PaymentMethodWidget extends StatelessWidget{


  const PaymentMethodWidget({super.key,});


  @override
  Widget build(BuildContext context) {

    return
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Align(alignment: Alignment.centerLeft,child: Text('Payment Method',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 16,color: Get.theme.secondaryHeaderColor))),
            ),SizedBox(height: 5,),

            InkWell(onTap: (){Get.to(UpiPayment());},child: ListTile(minTileHeight: 60,tileColor: Get.theme.cardColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),leading: CircleAvatar(radius: 22,backgroundColor: Get.theme.primaryColor,child: SizedBox(height: 26,width: 26,child: Image.asset(images.upi)),),title: Poppins('UPI (Pay via any App)',fontWeight: FontWeight.w400,fontSize: 18,color: Get.theme.secondaryHeaderColor),),),
            SizedBox(height: 18,),
            InkWell(onTap: (){Get.to(CardPayment());},child: ListTile(minTileHeight: 60,tileColor: Get.theme.cardColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),leading: CircleAvatar(radius: 22,backgroundColor: Get.theme.primaryColor,child: SizedBox(height: 26,width: 26,child: Image.asset(images.card)),),title: Poppins('Credit/Debit Card)',fontWeight: FontWeight.w400,fontSize: 18,color: Get.theme.secondaryHeaderColor),),),
            SizedBox(height: 18,),
            ListTile(minTileHeight: 60,tileColor:Get.theme.cardColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),leading: CircleAvatar(radius: 22,backgroundColor:Get.theme.primaryColor,child: SizedBox(height: 26,width: 26,child: Image.asset(images.wallet)),),title:Poppins('Wallet',fontWeight: FontWeight.w400,fontSize: 18,color: Get.theme.secondaryHeaderColor),),
            SizedBox(height: 18,),
            ListTile(minTileHeight: 60,tileColor: Get.theme.cardColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),leading: CircleAvatar(radius: 22,backgroundColor: Get.theme.primaryColor,child: SizedBox(height: 26,width: 26,child: Image.asset(images.bank)),),title:Poppins('Net Banking',fontWeight: FontWeight.w400,fontSize: 18,color: Get.theme.secondaryHeaderColor),),
          ],),
      );
  }
}
