import 'package:flutter/material.dart';
class TextUtil extends StatelessWidget {
  String text;
  Color? color;
  double? size;
  bool? weight;
  bool? isWhite;


  TextUtil({super.key,required this.text,this.size,this.color,this.weight,this.isWhite});

  @override
  Widget build(BuildContext context) {
    return  Text(text,
      maxLines: 6,
      style: TextStyle(
       inherit: false,
          color:isWhite == null?const Color(0xff7F8489):Colors.white,fontSize:size?? 16,fontFamily: "Lato",
          fontWeight:weight==null?FontWeight.w100: FontWeight.w900
      ),);
  }
}