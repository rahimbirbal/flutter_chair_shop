import 'package:flutter/material.dart';
import 'package:flutter_application_4/Models/filter_card.dart';
import 'package:flutter_application_4/theme.dart';


class FilterCard extends StatefulWidget {
  const FilterCard({super.key});
  

  @override
  State<FilterCard> createState() => _FilterCardState();
}

int selectedIndex = 0;
class _FilterCardState extends State<FilterCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: filterCard.length,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              index == 0 ? SizedBox(width: 16,) : SizedBox(width: 0,),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(right: 12),
                  padding: EdgeInsets.symmetric(vertical: 21, horizontal: 16),
                  decoration: BoxDecoration(
                    color: selectedIndex==index? Green : white,
                    border: Border.all(
                      color: selectedIndex==index? Green : Background),
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: selectedIndex==index
                  ?Image.asset('assets/icons/' + filterCard[index].iconActive)
                  :Image.asset('assets/icons/' + filterCard[index].iconInactive)
                ),
              ),
            ],
          );
        },
      ),
    );
      // komentar juga
  }
}