import 'package:flutter/material.dart';
class BlueBtn extends StatelessWidget {
  final  IconData icon;
  final double? height;
  final double? width;
  BlueBtn({super.key,required this.icon,this.height,this.width});

  @override
  Widget build(BuildContext context) {
    return   Container(
      height:height?? 90,
      width:width?? 90,

      decoration:  BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,

          boxShadow: [
            BoxShadow(color: Colors.grey.shade700,
                offset:const  Offset(-5,-4),
                blurRadius: 20
            ),
           const  BoxShadow(color: Colors.black,
                offset:  Offset(10,10),
                blurRadius: 25
            ),
          ]

      ),
      alignment: Alignment.center,
      child: Container(
        height: height==null?82:height!-8,
        width:width==null? 82:width!-8,
        foregroundDecoration:const  BoxDecoration(
            shape: BoxShape.circle,
            //color: Colors.white
            backgroundBlendMode: BlendMode.overlay,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,

                colors: [Colors.black,Colors.white]
            )
        ),
        child: Icon(icon,color: Colors.white,size:height==null? 35:24,),
      ),
    );
  }
}
