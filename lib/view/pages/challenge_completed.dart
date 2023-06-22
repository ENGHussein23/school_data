import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_data/view/widgets/back_arrow_text.dart';
import 'package:school_data/view/widgets/texts.dart';
class ChallengeCompleted extends StatelessWidget{
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
              padding: const EdgeInsets.only(top: 0,left: 40),
              height: screenHeight*0.282,
              decoration:  const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/headers.png'),
                  fit: BoxFit.fill,
                ),),
              child:BackArrowText("الإستمرار على الصلاة")
            ),
            const SizedBox(height: 50,),
            Center(
              child: Container(
                padding: const EdgeInsets.only(top: 12,right: 20,left: 20,bottom: 12),
                width: screenWidth*0.85,
                height: 110,
                decoration:  const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/buttonwallbluelight.png'),
                    fit: BoxFit.fill,
                  ),),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,size: 30,),
                    GestureDetector(
                      child: Container(
                        width: 107,
                        height: 30,
                        decoration:  const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/download button.png'),
                            fit: BoxFit.fill,
                          ),),
                      ),
                      onTap: (){
                        print("assets/images/download button.png");
                      },
                    ),
                    Column(
                      children: const [
                        Text("مبروك",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.blue,fontSize: 27),),
                        Text("اكتمل التحدي",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.grey,fontSize: 16),),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50,),
            const Center(child: Text("الإستمرار على الصلاة",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color: Colors.blue),),),
            const SizedBox(height: 20,),
            Center(
              child: Container(
                height: 210,
                width: screenWidth*0.45,
                decoration:  const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.fill,
                  ),),
              ),
            )
          ],
        ),
      ),
    );
  }

}