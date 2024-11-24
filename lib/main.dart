import 'package:flutter/material.dart';
import 'package:travel_app/config/size.dart';
import 'package:travel_app/pages/intro_page1.dart';
import 'package:get/get.dart';
import 'package:travel_app/pages/schedule_page.dart';
import 'package:travel_app/pages/splash_screen.dart';


void main(){
  runApp( const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}
