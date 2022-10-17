import 'package:flutter/material.dart';
import 'package:store/components/constant.dart';
import 'package:store/models/product.dart';
import 'package:store/screens/deatail.dart';

import 'product_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
              child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 70),
                decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
              ),
              ListView.builder(
                  itemCount: products.length,
                  itemBuilder: ((context, index) => ProductCard(
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => DeatailScreen(
                                        product: products[index],
                                      ))));
                        },
                        itemIndex: index,
                        product: products[index],
                      )))
            ],
          ))
        ],
      ),
    );
  }
}
