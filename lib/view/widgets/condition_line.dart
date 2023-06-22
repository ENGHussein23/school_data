import 'package:flutter/material.dart';
import 'package:school_data/controllers/constants/constants.dart';

class ConditionLine extends StatelessWidget{
  late String text;
  final VoidCallback onPressed;

  ConditionLine(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
   return  GestureDetector(
     onTap: onPressed,
     child: Container(
       padding: EdgeInsets.only(bottom: 10),
       child: Row(
         children: [
           CircleAvatar(backgroundColor: check_box_color,),
           SizedBox(width: 5),
           Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: test_color),)
         ],
       ),
     ),
   );
  }
}