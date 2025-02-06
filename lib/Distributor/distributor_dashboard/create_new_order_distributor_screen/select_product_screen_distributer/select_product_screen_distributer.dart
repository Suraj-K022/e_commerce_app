import 'package:e_commerce_app/Distributor/distributor_dashboard/distributor_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Salesman/salesman_dashboard/salesman_dashboard.dart';
import '../../../../custom_widgets/custom_buttons.dart';
import '../../../../custom_widgets/custom_texts.dart';
import '../../../../utils/images.dart';

class SelectProductScreenDistributer extends StatefulWidget {
  const SelectProductScreenDistributer({super.key});

  @override
  State<SelectProductScreenDistributer> createState() => _SelectProductScreenDistributerState();
}

class _SelectProductScreenDistributerState extends State<SelectProductScreenDistributer> {
  int screen = 0;
  int select = 0;
  int visible = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      bottomNavigationBar: visible == 1
          ? Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: CustomButton(
            text: 'Add',
            onPressed: () {
              setState(() {
                visible = 4;
              });
            }),
      )
          : visible == 4
          ? Padding(
        padding:
        const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: CustomButton(
            text: 'View Product List',
            onPressed: () {
              setState(() {
                visible = 5;
              });
            }),
      )
          : visible == 5
          ? Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 24, vertical: 20),
        child: CustomButton(
            text: 'Order Place',
            onPressed: () {
              Get.to(DistributorDashboard());
            }),
      )
          : SizedBox(),
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Get.theme.primaryColor,
        titleSpacing: 0,
        centerTitle: true,
        title: Poppins(
          'Select Product',
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
      body:  ListView(
        padding: EdgeInsets.symmetric(horizontal: 24,),
        children: [
          visible == 0 || visible == 1 || visible == 4
              ? Container(margin: EdgeInsets.symmetric(vertical: 20),
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.grey[800]),
            child: Center(
              child: Poppins(
                'Retailer Indore',
                color: Get.theme.cardColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
              : SizedBox(
            height: 0,
          ),


          //searchcontainer//
          visible == 0 || visible == 1 || visible == 4
              ? Container(margin: EdgeInsets.only(top: 0,bottom: 20),
            height: 50,
            decoration: BoxDecoration(
              color: Get.theme.scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(10),
              border: Border(
                  bottom: BorderSide(color: Colors.grey, width: 1)),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                const Icon(Icons.search_rounded,
                    color: Colors.grey, size: 26),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Products',
                      hintStyle: GoogleFonts.poppins(
                          color: Colors.grey, fontSize: 16),
                      border: InputBorder.none,
                    ),
                    style: GoogleFonts.poppins(
                      color: Get.theme.secondaryHeaderColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          )
              : SizedBox(),


          //itemgridview//
          visible == 0
              ? GridView(padding: EdgeInsets.symmetric(vertical: 0,horizontal: 0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1,
            ),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    visible = 1;
                  });
                },
                child: Container(
                  height: 163,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child:
                  Image.asset(images.orderimage4, fit: BoxFit.cover),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 163,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child:
                  Image.asset(images.orderimage5, fit: BoxFit.cover),
                ),
              ),
            ],
          )
              : SizedBox(),

          //bigContainer//

          visible == 1
              ? Container(
            height: 212,
            width: double.infinity,
            color: Colors.grey[400],
            child: Image.asset(
              images.orderimage4,
              fit: BoxFit.cover,
            ),
          )
              : SizedBox(),

          //quantityrow//

          visible == 1
              ? Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 5,
                  children: [
                    Poppins(
                      'Qty : ',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Get.theme.secondaryHeaderColor,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(50)),
                      padding: EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 10,
                        children: [
                          Image.asset(
                            images.add,
                            height: 20,
                            width: 20,
                          ),
                          Poppins(
                            '0',
                            color: Get.theme.primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          Image.asset(
                            images.sub,
                            height: 20,
                            width: 20,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  spacing: 10,
                  children: [
                    Poppins(
                      'Size : ',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Get.theme.secondaryHeaderColor,
                    ),
                    Row(
                      spacing: 10,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                select = 1;
                              });
                            },
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: select == 1
                                  ? Get.theme.primaryColor
                                  : Colors.grey,
                              child: Center(
                                child: Poppins(
                                  'S',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Get.theme.cardColor,
                                ),
                              ),
                            )),
                        InkWell(
                            onTap: () {
                              setState(() {
                                select = 2;
                              });
                            },
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: select == 2
                                  ? Get.theme.primaryColor
                                  : Colors.grey,
                              child: Center(
                                child: Poppins(
                                  'M',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Get.theme.cardColor,
                                ),
                              ),
                            )),
                        InkWell(
                            onTap: () {
                              setState(() {
                                select = 3;
                              });
                            },
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: select == 3
                                  ? Get.theme.primaryColor
                                  : Colors.grey,
                              child: Center(
                                child: Poppins(
                                  'L',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Get.theme.cardColor,
                                ),
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
              : SizedBox(),

          //data table//

          visible == 1 || visible == 4 || visible == 5
              ? SingleChildScrollView(padding: EdgeInsets.symmetric(vertical: 10),
            scrollDirection:
            Axis.horizontal, // Enables horizontal scrolling
            child: SingleChildScrollView(
              scrollDirection:
              Axis.vertical, // Enables vertical scrolling
              child: DataTable(headingRowHeight: 40,
                headingRowColor:
                WidgetStateColor.resolveWith((states) => Get.theme.primaryColor),
                columnSpacing: 30,
                columns: [
                  DataColumn(
                      label: Poppins(
                        'Product Name',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Get.theme.cardColor,
                      )),
                  DataColumn(
                      label: Poppins(
                        'Size',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Get.theme.cardColor,

                      )),
                  DataColumn(
                      label: Poppins(
                        'Pack',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Get.theme.cardColor,

                      )),
                  DataColumn(
                      label: Poppins(
                        'Stock',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Get.theme.cardColor,

                      )),
                  DataColumn(
                      label: Poppins(
                        'MRP',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Get.theme.cardColor,

                      )),
                  DataColumn(
                      label: Poppins(
                        'Total Amount',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Get.theme.cardColor,

                      )),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Poppins(
                      'Puma Tshirt 14201',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    )),
                    DataCell(Poppins(
                      'Small',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    )),
                    DataCell(Poppins(
                      '5P',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    )),
                    DataCell(Poppins(
                      '400',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    )),
                    DataCell(Poppins(
                      '500.00',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    )),
                    DataCell(Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Poppins(
                          '500.00',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[700],
                        ),
                        visible==5?Icon(Icons.delete,color: Colors.red,):SizedBox()

                      ],
                    )),
                  ]),
                  DataRow(cells: [
                    DataCell(Poppins(
                      'Puma Tshirt 14202',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    )),
                    DataCell(Poppins(
                      'Small',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    )),
                    DataCell(Poppins(
                      '5P',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    )),
                    DataCell(Poppins(
                      '400',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    )),
                    DataCell(Poppins(
                      '500.00',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    )),
                    DataCell(Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Poppins(
                          '500.00',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[700],
                        ),
                        visible==5?Icon(Icons.delete,color: Colors.red,):SizedBox()


                      ],
                    )),
                  ]),
                ],
              ),
            ),
          )
              : SizedBox(),
        ],
      ),
    );
  }
}
