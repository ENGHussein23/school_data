import 'package:flutter/material.dart';
import 'package:school_data/view/widgets/texts.dart';

InformationLine(first_text,seconde_text){
  return Column(
    children: [

      Row(
        textDirection: TextDirection.rtl,
        children: [
          big_gry_text(first_text),
          Expanded(child: Center(child: big_gry_text(seconde_text),))
        ],),
      const Divider(
        height: 6,
        thickness: 1,
        endIndent: 0,
        color: Colors.grey,
      ),
    ],
  );
}