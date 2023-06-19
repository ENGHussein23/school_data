import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_data/controllers/constants/constants.dart';
import 'package:school_data/view/widgets/badge.dart';
import 'package:school_data/view/widgets/texts.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                padding: EdgeInsets.only(top: 30,right: 15,left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.density_medium_sharp,size: 30,),
                        SizedBox(width: 5,),
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
                            gry_text("البطل"),
                            big_blue_text("محمد أحمد علي"),
                            gry_text("الأول المتوسط"),
                          ],
                        )
                      ],
                    ),
                    Icon(Icons.notifications_none_outlined,size: 30,),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(top: 70,right: 15,left: 15),
                width: screenWidth,
                height: screenHeight,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/homepage.png'),
                    fit: BoxFit.cover,
                  ),),
                child: Column(
                  children: [
                    GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 5,
                      children: List.generate(
                        25,
                            (index) => BadgeItem(badges_test[index],
                            (){
                              Get.toNamed("/BadgePage", arguments: {'badge_name':badges_test[index]});
                            })
                      ),
                    ),
                    const SizedBox(height: 50,),
                    Center(
                      child: GestureDetector(
                        child: Container(
                          width: 220,
                          height: 40,
                          decoration:  const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/logoutbutton.png'),
                              fit: BoxFit.cover,
                            ),),
                        ),
                        onTap: (){
                          print("assets/images/logout_button.png");
                        },
                      ),
                    ),

                ]
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}