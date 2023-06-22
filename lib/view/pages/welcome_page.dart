import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
  return Scaffold(
    body: Container(
      height: screenHeight,
      width: screenWidth,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/login.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: 120,),
          Text("اهلاَ بك",style: TextStyle(fontSize: 55,fontWeight: FontWeight.w900,color: Colors.white),),
          SizedBox(height: 120,),
          ElevatedButton(onPressed: (){
            Get.toNamed("/LoginPage");
          },style: ElevatedButton.styleFrom(
            fixedSize: Size.fromWidth(200),
            elevation: 0,
            backgroundColor: Colors.transparent,
            minimumSize: Size(120, 40),
            padding: EdgeInsets.symmetric(horizontal: 16),
            shape: const RoundedRectangleBorder(
              side: BorderSide(
                color: Color.fromARGB(255, 151, 223, 255),
              ),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),

          ), child: Text("تسجيل الدخول",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)),
          SizedBox(height: 100,),
        ],
      ),
    ),

floatingActionButton: FloatingActionButton.small(
  onPressed: (){},
  elevation: 0,
  backgroundColor:Color.fromARGB(255, 0, 181, 255),
  child:Icon(Icons.settings_outlined,color: Colors.white,),
),
  );
  }

}