import 'package:cyber_truck/utils/showup_animation.dart';
import 'package:flutter/material.dart';

import '../compononets/black_btn.dart';
import '../compononets/blue_btn.dart';
import '../utils/text_utlis.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return

         Scaffold(
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
              bottom: false,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
              const SizedBox(height: 10,),
              Row(

                children: [
                  BlackBtn(icon: Icons.menu,),
                  Expanded(child: Column(
                    children: [
                      TextUtil(text: "Tesla",size: 14,),
                      Hero(
                          tag: "Cybertruck",
                          child: TextUtil(text: "Cybertruck",isWhite: true,weight: true,size: 16,)),
                    ],
                  )),
                  BlackBtn(icon: Icons.person_2_outlined,)
                ],
              ),
                    const Spacer(),
            ShowUpAnimation(
              delay: 200,
              child: SizedBox(
                height: 150,
                width:double.infinity,
                child:   Image.asset("assets/front.png"),
              ),
            ),
                    const Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShowUpAnimation(
                      delay:300,
                        child: TextUtil(text: "Status",isWhite: true,weight: true,size: 18,)),
                  const   SizedBox(height: 20,),
                    ShowUpAnimation(
                      delay:400,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextUtil(text: "Battery",size: 12,),
                              TextUtil(text: "54%",isWhite: true,weight: true,size: 14,),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextUtil(text: "Range",size: 12,),
                              TextUtil(text: "297 km",isWhite: true,weight: true,size: 14,),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextUtil(text: "Temperature",size: 12,),
                              TextUtil(text: "27 C",isWhite: true,weight: true,size: 14,),
                            ],
                          )
                        ],
                      ),
                    ),
                    const   SizedBox(height: 20,),

                    ShowUpAnimation(
                      delay: 500,
                        child: TextUtil(text: "Information",isWhite: true,weight: true,size: 18,)),
                   const  SizedBox(height: 20,),
                    ShowUpAnimation(
                      delay: 600,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 110,
                            width: 110,
                            decoration: BoxDecoration(
                              color:  const Color(0xff202326),
                                borderRadius: BorderRadius.circular(10),
                                image:const  DecorationImage(
                                  image: AssetImage("assets/mask1.png")
                                ),
                                boxShadow: [
                                  BoxShadow(color: Colors.grey.shade700,
                                      offset:const  Offset(-1,-1),
                                      blurRadius: 20
                                  ),
                                  const  BoxShadow(color: Colors.black,
                                      offset:  Offset(5,5),
                                      blurRadius: 25
                                  ),
                                ]

                            ),
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [

                                TextUtil(text: "Engine",isWhite: true,weight: true,size: 14,),
                                TextUtil(text: "Sleeping mode",size: 12,),
                              ],
                            )
                          ),
                          Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:  const Color(0xff202326),
                                  image:const  DecorationImage(
                                      image: AssetImage("assets/mask1.png")
                                  ),
                                  boxShadow: [
                                    BoxShadow(color: Colors.grey.shade700,
                                        offset:const  Offset(-1,-1),
                                        blurRadius: 20
                                    ),
                                    const  BoxShadow(color: Colors.black,
                                        offset:  Offset(5,5),
                                        blurRadius: 25
                                    ),
                                  ]

                              ),
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [

                                  TextUtil(text: "Climate",isWhite: true,weight: true,size: 14,),
                                  TextUtil(text: "A/C is ON",size: 12,),
                                ],
                              )
                          ),
                          Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:  const Color(0xff202326),
                                  image:const  DecorationImage(
                                      image: AssetImage("assets/mask1.png")
                                  ),
                                  boxShadow: [
                                    BoxShadow(color: Colors.grey.shade700,
                                        offset:const  Offset(-1,-1),
                                        blurRadius: 20
                                    ),
                                    const  BoxShadow(color: Colors.black,
                                        offset:  Offset(5,5),
                                        blurRadius: 25
                                    ),
                                  ]

                              ),
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [

                                  TextUtil(text: "Tires",isWhite: true,weight: true,size: 14,),
                                  TextUtil(text: "Low pressure",size: 12,),

                                ],
                              )
                          )
                        ],
                      ),
                    ),
                    const   SizedBox(height: 40,),
                    ShowUpAnimation(
                      delay: 700,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextUtil(text: "Navigation",isWhite: true,weight: true,size: 18,),
                            TextUtil(text: "History",isWhite: true,size: 14,),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
                const SizedBox(height: 20,),
                   const Spacer(),

                    ShowUpAnimation(
                      delay: 800,
                      child: Container(
                        width: double.infinity,
                        decoration:const  BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xff353A40),
                                  Color(0xff16171B),

                                ]
                            ),
                          borderRadius: BorderRadius.vertical(top: Radius.circular(50))
                        ),
                        padding:const  EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                        child: Column(
                          children: [
                            Center(
                              child: Container(
                                height: 5,
                                width: 40,
                                decoration:  BoxDecoration(
                                  color:const  Color(0xff17181C),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [

                                    TextUtil(text: "A/C is ON",isWhite: true,weight: true,size: 20,),
                                    TextUtil(text: "Tap to turn off or swipe up for a fast setup",size: 12,),
                                  ],
                                ),
                                GestureDetector(
                                    onTap: (){
                                      // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
                                    },
                                    child: BlueBtn(icon: Icons.power_settings_new,height: 70,width: 70,)),
                              ],
                            )

                          ],
                        ),

                                          ),
                    )

            ],)),
          ),

        );
  }
}
