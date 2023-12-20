import 'package:cyber_truck/utils/text_utlis.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../compononets/black_btn.dart';
import '../compononets/blue_btn.dart';
import 'home_screen.dart';
class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration:const  BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff424750),
                  Color(0xff202326),

                ]
            )
        ),
        child: SafeArea(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  BlackBtn(icon: Icons.settings_outlined,)
                ],
              ),
              TextUtil(text: "Tesla",size: 24,),
              Hero(
                tag: "Cybertruck",
                  child: TextUtil(text: "Cybertruck",isWhite: true,weight: true,size: 50,)),
               Expanded(child: Stack(
                 children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextUtil(text: "297",isWhite: true,size: 160,),
                      TextUtil(text: "KM",isWhite: true,size: 20,),
                    ],
                  ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 200,
                    alignment: Alignment.bottomCenter,
                    child:   Image.asset("assets/side.png",fit: BoxFit.fill,),
                  ),
                )
                ],
              )),
              const  SizedBox(height: 20,),
              TextUtil(text: "A/C is turned on",size: 18,),
             const  SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
                },
                  child: BlueBtn(icon: Icons.lock_outline,)),
             const  SizedBox(height: 20,),
              TextUtil(text: "Tap to open the car",size: 14,isWhite: true,weight: true,),
             const  SizedBox(height: 20,),


            ],
          ),
        ),
      ),

    );
  }
}
