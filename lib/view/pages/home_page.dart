import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_data/controllers/constants/constants.dart';
import 'package:school_data/view/widgets/badge.dart';
import 'package:school_data/view/widgets/texts.dart';
import 'package:badges/badges.dart' as badges;
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    late double HeaderHeight;
    double BodyHight=screenHeight-(50+20+70);
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child:ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  HeaderHeight = constraints.maxHeight;
                  return Container(
                    padding: EdgeInsets.only(top: 30,right: 15,left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Get.toNamed("/PersonalInformation");
                              },
                              child: Image(image: AssetImage("assets/images/menu_hum.png"),height: 30,width: 30,),
                              // child: const Icon(Icons.density_medium,size: 30,),
                            ),
                            SizedBox(width: 5,),
                            Container(
                              height: 74,
                              width: 74,
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
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               gry_text("البطل"),
                               big_blue_text("محمد أحمد علي"),
                               gry_text("الأول المتوسط"),
                             ],
                           ),
                          ],
                        ),
                        badges.Badge(
                          badgeContent: Text('3',style: TextStyle(color: Colors.white),),
                          badgeStyle: badges.BadgeStyle(badgeColor: Colors.indigo),
                          child: Icon(Icons.notifications_none_outlined,size: 30,),
                        )

                      ],
                    ),
                  );
                },
              ),

              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(top: 70,right: 15,left: 15),
                width: screenWidth,
                height: BodyHight,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/homepage.png'),
                    fit: BoxFit.fill,
                  ),),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("أوسمة تم الحصول عليها",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w800),),
                        const Divider(height: 6, thickness: 1, endIndent: 0, color: Colors.white30,),
                        Container(
                          width: double.infinity,
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              final itemWidth = (constraints.maxWidth - 32) / 5;
                              return Wrap(
                                spacing: 8.0,
                                runSpacing: 20.0,
                                children: List.generate(earned_badges_test.length, (index) {
                                  return SizedBox(
                                    width: itemWidth,
                                    child: BadgeItem(earned_badges_test[index],
                                            (){Get.toNamed("/ChallengeCompleted");}),
                                  );
                                }),
                              );
                            },
                          ),
                        ),
                        Text("أوسمة لم يتم الحصول عليها",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w800),),
                        const Divider(height: 6, thickness: 1, endIndent: 0, color: Colors.white30,),
                        Container(
                          width: double.infinity,
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              final itemWidth = (constraints.maxWidth - 32) / 5;
                              return Wrap(
                                spacing: 8.0,
                                runSpacing: 20.0,
                                children: List.generate(not_earned_badges_test.length, (index) {
                                  return SizedBox(
                                    width: itemWidth,
                                    child: BadgeItem(not_earned_badges_test[index],
                                            (){
                                          Get.toNamed("/BadgePage", arguments: {'badge_name':not_earned_badges_test[index]});
                                        }),
                                  );
                                }),
                              );
                            },
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
                        const SizedBox(height: 20,),
                      ]
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }
}