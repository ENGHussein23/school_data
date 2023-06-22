import 'package:flutter/material.dart';
import 'package:school_data/view/widgets/back_arrow_text.dart';
import 'package:school_data/view/widgets/information_line.dart';
import 'package:school_data/view/widgets/texts.dart';

class PersonalInformation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 0,left: 40,bottom: 70),
              width: screenWidth,
              height: screenWidth*0.58,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/headers2.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: BackArrowText("مرحلة التحديات"),
            ),
            Container(
              padding: EdgeInsets.only(top: 5,right: 30,left: 30),
              child: Column(
                textDirection: TextDirection.rtl,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Container(
                        height: 90,
                        width: 90,
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
                        textDirection: TextDirection.rtl,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          big_gry_text("البطل"),
                          big2_blue_text("محمد أحمد علي"),
                          big_gry_text("الأول المتوسط"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  InformationLine("التسلسل",""),
                  InformationLine("تاريخ الولادة",""),
                  InformationLine("صنف الدم",""),
                  InformationLine("رقم هاتف ولي الأمر",""),
                  InformationLine("الصف",""),
                  InformationLine("اسم الأب",""),
                  InformationLine("اسم الأم",""),
                ],
              ),
            )

          ],
        ),
     ),
   );
  }

}