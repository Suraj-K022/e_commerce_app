import 'package:e_commerce_app/authorisation_screens/login_screen/login_screen.dart';
import 'package:e_commerce_app/splashScreen/splash_screen.dart';
import 'package:e_commerce_app/themedata/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(MyApp());
}



class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'EcommerceApp',
      theme: themeData,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // LoginScreen(),
    );
  }
}
