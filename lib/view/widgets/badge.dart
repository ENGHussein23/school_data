import 'package:flutter/material.dart';

class BadgeItem extends StatelessWidget{
  late String image;
  final VoidCallback onPressed;
  BadgeItem(this.image,this.onPressed);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child:  Container(
        padding: const EdgeInsets.all(5),
        child: Image(image: AssetImage(image),height: 70,width: 70,fit: BoxFit.contain,),
      ),
    );
  }

}