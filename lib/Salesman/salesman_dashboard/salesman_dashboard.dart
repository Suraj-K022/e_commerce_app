import 'package:e_commerce_app/Retailer/Home/product_detail_screen/product_detail_screen.dart';
import 'package:e_commerce_app/Salesman/payment_screen/payment_screen.dart';
import 'package:e_commerce_app/Salesman/salesman_dashboard/create_new_order/create_new_order.dart';
import 'package:e_commerce_app/Salesman/salesman_dashboard/invoice_screen/invoice_screen.dart';
import 'package:e_commerce_app/Salesman/salesman_dashboard/product_avail/product_avail.dart';
import 'package:e_commerce_app/Salesman/salesman_dashboard/product_info/product_info.dart';
import 'package:e_commerce_app/SalesmanDistributorAboutScreen/salesman_distributor_about_screen.dart';
import 'package:e_commerce_app/help_support_screen/help_support_screen.dart';
import 'package:e_commerce_app/salesman_distributor_wallet/salesman_distributor_wallet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../authorisation_screens/login_screen/login_screen.dart';
import '../../custom_widgets/custom_texts.dart';
import '../../utils/images.dart';
import 'order_screen/order_screen.dart';

class SalesmanDashboard extends StatelessWidget {

  Widget drawerItem(String imagePath, String text, Function onTapAction) {
    return InkWell(
      onTap: () => onTapAction(),
      child: ListTile(
        leading: Image.asset(imagePath, width: 24, height: 24, fit: BoxFit.cover, color: Get.theme.secondaryHeaderColor),
        title: Poppins(text, fontSize: 16, fontWeight: FontWeight.w400, color: Get.theme.secondaryHeaderColor),
      ),
    );
  }

  const SalesmanDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      drawer: Drawer(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Get.theme.primaryColor,
              automaticallyImplyLeading: false,
              actions: [
                IconButton(
                  icon: Icon(Icons.cancel, color: Get.theme.cardColor),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                SizedBox(width: 20)
              ],
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 10),
                children: [
                  drawerItem(images.drawer1, "Create New Order", () {
                    // Handle Create New Order action
                    Get.to(CreateNewOrder());


                  }),
                  drawerItem(images.drawer2, "Orders", () {
                    // Handle Orders action
                    Get.to(OrderScreen());

                  }),
                  drawerItem(images.drawer3, "Invoices", () {
                    // Handle Invoices action
                    Get.to(InvoiceScreen());
                  }),
                  drawerItem(images.drawer4, "Product Availability", () {
                    // Handle Product Availability action
                    Get.to(ProductAvailableScreen());

                  }),
                  drawerItem(images.drawer5, "Product Info", () {
                    // Handle Product Info action
                    Get.to(ProductInfoScreen());

                  }),
                  drawerItem(images.drawer6, "Payments", () {
                    // Handle Payments action
                    Get.to(PaymentScreen());
                  }),
                  drawerItem(images.drawer7, "Wallet", () {
                    // Handle Wallet action
                    Get.to(SalesmanDistributorWallet());
                  }),
                  drawerItem(images.drawer8, "About", () {
                    // Handle About action
                    Get.to(SalesmanDistributorAboutScreen());
                  }),
                  drawerItem(images.drawer9, "Help and Support", () {
                    // Handle Help and Support action
                    Get.to(HelpSupportScreen());
                  }),
                  drawerItem(images.drawer1, "Logout", () {
                    // Handle Logout action
                    showDialog(context: context, builder: (context) {
                      return
                        AlertDialog(contentPadding: EdgeInsets.symmetric(horizontal: 40,vertical: 24),backgroundColor: Get.theme.cardColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          title: Poppins('Are you sure you want to logout?',textAlign: TextAlign.center,fontWeight: FontWeight.w500,fontSize: 20,color: Get.theme.secondaryHeaderColor,maxLines: 10,),
                          content: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,spacing: 20,
                            children: [
                              Expanded(child: InkWell(onTap: (){Get.offAll(LoginScreen(type: 'Salesman',));},child: Container(height: 38,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Get.theme.primaryColor),child: Center(child: Poppins('Yes',fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500),),),)),
                              Expanded(child: InkWell(onTap: (){Get.back();},child: Container(height: 38,decoration: BoxDecoration(border: Border.all(color:Get.theme.primaryColor,width: 1),borderRadius: BorderRadius.circular(5),color: Get.theme.cardColor),child: Center(child: Poppins('No',fontSize: 20,color: Get.theme.primaryColor,fontWeight: FontWeight.w500),),),)),

                            ],
                          ),






                        );

                    },);


                  }),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        titleSpacing: 0,
        actions: [
          Icon(Icons.notifications_active_outlined, color: Get.theme.secondaryHeaderColor, size: 24),
          SizedBox(width: 24),
        ],
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        leading: Builder(
          builder: (context) => InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer(); // Opens the drawer
            },
            child: Icon(Icons.menu, color: Get.theme.secondaryHeaderColor, size: 24),
          ),
        ),
        title: Poppins(
          'Salesman Dashboard',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Get.theme.secondaryHeaderColor,
        ),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          InkWell(onTap: (){Get.to(CreateNewOrder());},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color(0xFFF6F7ED),
                border: Border.all(color: Get.theme.primaryColor, width: 1),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Image.asset(images.lightbg1, height: 50, width: 50, fit: BoxFit.cover),
                    Poppins('Create New Order', fontWeight: FontWeight.w500, fontSize: 16),
                  ],
                ),
              ),
            ),
          ),
          InkWell(onTap:() {
            Get.to(OrderScreen());

          } ,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color(0xFFF6F7ED),
                border: Border.all(color: Get.theme.primaryColor, width: 1),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Image.asset(images.lightbg2, height: 50, width: 50, fit: BoxFit.cover),
                    Poppins('Orders', fontWeight: FontWeight.w500, fontSize: 16),
                  ],
                ),
              ),
            ),
          ),
          InkWell(onTap: () {
            Get.to(InvoiceScreen());

          },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color(0xFFF6F7ED),
                border: Border.all(color: Get.theme.primaryColor, width: 1),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Image.asset(images.lightbg3, height: 50, width: 50, fit: BoxFit.cover),
                    Poppins('Invoice', fontWeight: FontWeight.w500, fontSize: 16),
                  ],
                ),
              ),
            ),
          ),
          InkWell(onTap: () {
            Get.to(PaymentScreen());
          },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color(0xFFF6F7ED),
                border: Border.all(color: Get.theme.primaryColor, width: 1),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Image.asset(images.lightbg4, height: 50, width: 50, fit: BoxFit.cover),
                    Poppins('Payment', fontWeight: FontWeight.w500, fontSize: 16),
                  ],
                ),
              ),
            ),
          ),
          InkWell(onTap: (){Get.to(ProductInfoScreen());},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color(0xFFF6F7ED),
                border: Border.all(color: Get.theme.primaryColor, width: 1),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Image.asset(images.lightbg5, height: 50, width: 50, fit: BoxFit.cover),
                    Poppins('Product Info', fontWeight: FontWeight.w500, fontSize: 16),
                  ],
                ),
              ),
            ),
          ),
          InkWell(onTap: (){Get.to(ProductAvailableScreen());},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color(0xFFF6F7ED),
                border: Border.all(color: Get.theme.primaryColor, width: 1),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Image.asset(images.lightbg6, height: 50, width: 50, fit: BoxFit.cover),
                    Poppins('Product Availability', fontWeight: FontWeight.w500, fontSize: 16),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
