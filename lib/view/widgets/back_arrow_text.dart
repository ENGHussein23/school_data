import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_data/view/widgets/texts.dart';

class BackArrowText extends StatelessWidget{
  late String text;

  BackArrowText(this.text);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){Get.back();},
      child: Row(
        // textDirection: TextDirection.rtl,
        children: [

          Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,),
          SizedBox(width: 5,),
          big_white_text(text),

        ],
      ),
    );
  }

}