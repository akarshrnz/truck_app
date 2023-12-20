import 'package:flutter/material.dart';
class BlackBtn extends StatelessWidget {
 final  IconData icon;
   BlackBtn({super.key,required this.icon});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin:const  EdgeInsets.only(right: 20,left: 20),
      height: 45,
      width: 45,
      foregroundDecoration:const  BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.transparent,
              Colors.black87,
            ]
        ),

      ),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color(0xff424750,),


          border: Border.all(color:const  Color(0xff424750,),width: 2),


          boxShadow: [
            BoxShadow(color: Colors.grey.shade700,
                offset:const  Offset(-3,-3),
                blurRadius: 10
            ),
            BoxShadow(color: Colors.grey.shade900,
                offset:const  Offset(5,5),
                blurRadius: 15
            ),
          ]


      ),
      child: Icon(icon,color: Colors.white,),
    );
  }
}
