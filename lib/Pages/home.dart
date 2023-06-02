import 'package:flutter/material.dart';
import 'package:flutter_application_4/theme.dart';
import 'package:flutter_application_4/Widgets/filter_card.dart';
import 'package:flutter_application_4/Widgets/popular_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Find Your\nDream Furniture',style: Headline2,),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Background,
                          ),
                    child: Image.asset('assets/icons/search.png',width: 28)
                  ),
                ],
              ),
              ),
              SizedBox(height: 16,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 0,horizontal: 32),
                  decoration: BoxDecoration(
                    color: Background,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('30% Off',style: Headline3,),
                          SizedBox(height: 4,),
                          Text('Until july 2024',style: title2,),
                          SizedBox(height: 12,),
                          Container(
                            height: 32,
                            width: 91,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Green,
                            ),
                            child: Center(child: Text('Get Now',style: title1.copyWith(color: Colors.white,)),
                          ),)
                        ],
                      ),
                      Image.asset('assets/images/iklan.png',height: 160,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16,),
              FilterCard(),
                SizedBox(height: 16,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('Popular',style: Headline4),width: double.infinity,),
                SizedBox(height: 16,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: CardPopular()),
                SizedBox(height: 16)
            ],
          ),
        )
      ),
    );
  }
}