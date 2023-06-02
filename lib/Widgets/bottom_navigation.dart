import 'package:flutter/material.dart';
import 'package:flutter_application_4/Pages/feedback.dart';
import 'package:flutter_application_4/Pages/home.dart';
import 'package:flutter_application_4/Pages/shop.dart';
import 'package:flutter_application_4/Pages/profile.dart';
import 'package:flutter_application_4/theme.dart';

class BottomNavigationn extends StatefulWidget {
  const BottomNavigationn({super.key});

  @override
  State<BottomNavigationn> createState() => _BottomNavigationnState();
}

class _BottomNavigationnState extends State<BottomNavigationn> {
    int selectedIndex = 0;

  List<Map> listNavbar = [
    {'title': 'Home', 'icon_active': 'home_active.png', 'icon_inactive': 'home_inactive.png'},
    {'title': 'Shop', 'icon_active': 'bag_active.png', 'icon_inactive': 'bag_inactive.png'},
    {'title': 'Feedback', 'icon_active': 'forum_active.png', 'icon_inactive': 'forum_inactive.png'},
    {'title': 'Profile', 'icon_active': 'account_active.png', 'icon_inactive': 'account_inactive.png'},
  ];

  List<Map> listMenu = [
    {'page': Home()},
    {'page': Shop()},
    {'page': Feedbackk()},
    {'page': Profile()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: listMenu[selectedIndex]['page']
          ),
    
          Container(
            height: 62,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 9),
              color: Background,
              child: Row(
                children:
                  List.generate(4, (index) => 
                    Expanded(
                        child: GestureDetector(
                          onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                          child: Container(
                            decoration: BoxDecoration(
                              color: selectedIndex == index ? Green : Background,
                              borderRadius: BorderRadius.circular(24)
                            ),
                            height: 44,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                selectedIndex == index
                                ?Image.asset('assets/icons/'+ listNavbar[index]['icon_active'],width: 20,)
                                :Image.asset('assets/icons/'+ listNavbar[index]['icon_inactive'],width: 20,),
                                Text(listNavbar[index]['title'],style: title3.copyWith(color: selectedIndex==index?white:black),),
                              ],
                            ),
                          ),
                        ),
                      ),
                  )
              ),
          ),
        ],
      ),
    );
    // return Container(
    //           width: double.infinity,
    //           padding: EdgeInsets.symmetric(horizontal: 16,vertical: 9),
    //           color: Background,
    //           child: Row(
    //               children: [
    //                 Expanded(
    //                   child: Container(
    //                     decoration: BoxDecoration(
    //                       color: Green,
    //                       borderRadius: BorderRadius.circular(24)
    //                     ),
    //                     height: 44,
    //                     child: Column(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       children: [
    //                         Image.asset('assets/icons/home_filled.png',width: 20,),
    //                         Text('Home',style: title3.copyWith(color: white),),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //                 Expanded(
    //                   child: Container(
    //                     decoration: BoxDecoration(
    //                       color: Background,
    //                       borderRadius: BorderRadius.circular(24)
    //                     ),
    //                     height: 44,
    //                     child: Column(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       children: [
    //                         Image.asset('assets/icons/shopping_bag_outline.png',width: 20,),
    //                         Text('Shop',style: title3.copyWith(color: black),),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //                 Expanded(
    //                   child: Container(
    //                     decoration: BoxDecoration(
    //                       color: Background,
    //                       borderRadius: BorderRadius.circular(24)
    //                     ),
    //                     height: 44,
    //                     child: Column(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       children: [
    //                         Image.asset('assets/icons/forum_outline.png',width: 20,),
    //                         Text('Feedback',style: title3.copyWith(color: black),),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //                 Expanded(
    //                   child: Container(
    //                     decoration: BoxDecoration(
    //                       color: Background,
    //                       borderRadius: BorderRadius.circular(24)
    //                     ),
    //                     height: 44,
    //                     child: Column(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       children: [
    //                         Image.asset('assets/icons/account_circle_outline.png',width: 20,),
    //                         Text('Profile',style: title3.copyWith(color: black),),
    //                       ],
    //                     ),
    //                   ),
    //                 )
    //               ],
    //             ),
    //         );
  }
}