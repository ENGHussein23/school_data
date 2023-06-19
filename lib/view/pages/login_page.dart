import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
   return Scaffold(
     body: Container(
       height: screenHeight,
       width: screenWidth,
       padding: EdgeInsets.only(right: 40,left: 40,top: 40),
       decoration: const BoxDecoration(
         image: DecorationImage(
           image: AssetImage('assets/images/login-03.png'),
           fit: BoxFit.cover,
         ),
       ),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text("تسجيل الدخول",style:TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color:Colors.white,fontFamily: 'Harmattan',),),
           SizedBox(height: 200,),
           Container(
             child: Column(
               textDirection: TextDirection.rtl,
               children: [
                 Directionality(textDirection: TextDirection.rtl,
                     child: TextFormField(
                   decoration: const InputDecoration(
                     label: Text("البريد الإلكتروني"),
                       prefixIcon: Icon(Icons.person_outline_outlined)
                   ),
                 )),
                 Directionality(textDirection: TextDirection.rtl,
                     child: TextFormField(
                       decoration: const InputDecoration(
                           label: Text("كلمة المرور"),
                           prefixIcon: Icon(Icons.lock_outline)
                       ),
                     )),
                 SizedBox(height: 30,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     SizedBox(
                       height: 50,
                       child: DecoratedBox(
                           decoration: BoxDecoration(
                               gradient: const LinearGradient(
                                   colors: [
                                     Color.fromARGB(255, 8, 80, 155),Colors.lightBlueAccent,
                                     //add more colors
                                   ]),
                               borderRadius: BorderRadius.circular(40),
                               boxShadow: const <BoxShadow>[
                                 BoxShadow(
                                     color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                                     blurRadius: 5) //blur radius of shadow
                               ]
                           ),
                           child:ElevatedButton(
                               style: ElevatedButton.styleFrom(
                                 primary: Colors.transparent,
                                 onSurface: Colors.transparent,
                                 shadowColor: Colors.transparent,
                                 //make color or elevated button transparent
                               ),

                               onPressed: (){
                                 Get.toNamed("/HomePage");
                               },
                               child: const Padding(
                                 padding:EdgeInsets.only(
                                   top: 2,
                                   bottom: 2,
                                 ),
                                 child:Text("تسجيل الدخول",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                               )
                           )
                       ),
                     ),
                     TextButton(onPressed: (){}, child: Text("نسيت كلمة المرور؟",style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.w900),))
                   ],
                 )
               ],
             ),
           )
         ],
       ),
     ),
     floatingActionButton: FloatingActionButton(
       onPressed: (){},
       elevation: 0,
       backgroundColor:Colors.transparent,
       child:Container(
         height: 100,
           width: 100,
           margin: EdgeInsets.all(10),
           decoration: BoxDecoration(
             shape: BoxShape.circle,
             border: Border.all(
               color: Colors.white,
               width: 1,
             ),
           ),
           child:Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,)),
     ),
   );
  }

}