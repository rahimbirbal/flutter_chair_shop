import 'package:flutter/material.dart';
import 'package:flutter_application_4/Widgets/bottom_navigation.dart';
import 'package:flutter_application_4/theme.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Background,
      body: SafeArea(
        child: Column(
          children: [
            Image.asset('assets/images/kursi.png', width: double.infinity,),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('The Best\nFurniture For Home',style: Headline1,),
                  SizedBox(height: 8,),
                  Text('Our practice is designing complete environments exceptional buildings, communities and places situations, here a uniques history',style: title2.copyWith(height: 1.38),),
                  SizedBox(height: 16,),
                  GestureDetector(
                    onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavigationn(),
                          ),
                        );
                    },
                    child: Container(
                      height: 48,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Green,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text('Buy Now',style: title1.copyWith(color: Colors.white)),
                      )
                    ),
                  )
                ],
                ),
              ),
            )
          ],
        )),
    );
  }
}