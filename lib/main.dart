import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_data/view/pages/badge_page.dart';
import 'package:school_data/view/pages/home_page.dart';
import 'package:school_data/view/pages/login_page.dart';
import 'package:school_data/view/pages/opening_page.dart';
import 'package:school_data/view/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'BalooBhaijaan2',
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page:()=>OpeningPage()),
        GetPage(name: "/WelcomePage", page:()=>WelcomePage()),
        GetPage(name: "/LoginPage", page:()=>LoginPage()),
        GetPage(name: "/HomePage", page:()=>HomePage()),
        GetPage(name: "/BadgePage", page:()=>BadgePage()),
      ],
      // home: HomePage(),
    );
  }
}


