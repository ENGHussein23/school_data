import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_data/view/widgets/condition_line.dart';
import 'package:school_data/view/widgets/texts.dart';

class BadgePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    final Map<String, dynamic> args = Get.arguments;
    String present_badge=args['badge_name'];
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30,left: 40,right: 40),
              width: screenWidth,
              height: screenHeight*0.63,
              decoration:  const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/frame5.png'),
                  fit: BoxFit.cover,
                ),),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/kid.png'),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        white_text("البطل"),
                        big_white_text("محمد أحمد علي"),
                        white_text("الأول المتوسط"),
                      ],
                    )
                  ],),
                  SizedBox(
                    height: screenHeight*0.1,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Image(image: AssetImage(present_badge),height: 170,width: 170,fit: BoxFit.contain,),
                  )
                ],
              ),
            ),
           Directionality(textDirection: TextDirection.rtl, child: Padding(
             padding: EdgeInsets.only(top:10,right: 35),
             child: Column(
               children: [
                 ConditionLine("الإستمرار على الصلاة"),
                 ConditionLine("وصف التحدي"),
                 ConditionLine("كيفية الحصول عليه"),
               ],
             ),
           ))
          ],
        ),
      ),
    );
  }

}