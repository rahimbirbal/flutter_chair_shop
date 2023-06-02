import 'package:flutter/material.dart';
import 'package:flutter_application_4/Models/product_card.dart';
import 'package:flutter_application_4/theme.dart';

class CardPopular extends StatelessWidget {
  const CardPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return 
     GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 16, childAspectRatio: 0.75, mainAxisSpacing: 16),
          itemCount: productCard.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Background, borderRadius: BorderRadius.circular(16)),
                    child: Image.asset(productCard[index].image),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    productCard[index].title,
                    style: title1,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    '\$${productCard[index].price}',
                    style: title2,
                  ),
                ],
              ),
            );
          },
        );
  }
}

