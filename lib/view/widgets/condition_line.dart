import 'package:flutter/material.dart';

ConditionLine(text){
  return  Container(
    padding: EdgeInsets.only(bottom: 10),
    child: Row(
      children: [
        CircleAvatar(backgroundColor: Color.fromARGB(165, 86, 159, 255),),
        SizedBox(width: 5),
        Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: Colors.blue),)
      ],
    ),
  );
}