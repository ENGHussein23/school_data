import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OpeningPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: GestureDetector(
          child:Container(
            height: screenHeight,
            width: screenWidth,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/welcome.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          onTap: (){
            Get.toNamed("/WelcomePage");
          },
        ) );
  }
}