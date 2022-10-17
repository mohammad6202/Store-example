import 'package:flutter/material.dart';

import '../components/constant.dart';
import '../models/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.itemIndex,
    required this.product,
    required this.press,
  }) : super(key: key);

  final int itemIndex;
  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 190,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 15),
                        blurRadius: 25,
                        color: Colors.black26)
                  ]),
            ),
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 160,
                  width: 200,
                  child: Hero(
                    tag: '${product.id}',
                    child: Image.asset(
                      "${product.image}",
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
            Positioned(
                bottom: 0,
                right: 0,
                child: SizedBox(
                  height: 136,
                  width: size.width - 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        child: Text(
                          "${product.title}",
                          style: Theme.of(context).textTheme.bodyText1,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        child: Text(
                          "${product.subtitle}",
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(kDefaultPadding),
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: kDefaultPadding * 1.5,
                                vertical: kDefaultPadding / 5),
                            decoration: BoxDecoration(
                                color: kSecondaryColor,
                                borderRadius: BorderRadius.circular(22)),
                            child: Text("${product.price}\$")),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
