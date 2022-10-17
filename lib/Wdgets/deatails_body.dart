import 'package:flutter/material.dart';
import 'package:store/Wdgets/color_dot.dart';
import 'package:store/Wdgets/productimage.dart';
import 'package:store/components/constant.dart';
import 'package:store/models/product.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key, this.product});
  final Product? product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: productImage(
                  Tag: "${product!.id}",
                  size: size,
                  image: '${product!.image}',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DotColor(
                      fillColor: kTextLightColor,
                      isSelected: true,
                    ),
                    DotColor(
                      fillColor: Colors.blue,
                      isSelected: false,
                    ),
                    DotColor(
                      fillColor: Colors.red,
                      isSelected: false,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding / 2,
                ),
                child: Text(
                  '${product!.title}',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Text(
                '${product!.price}\$',
                style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: 28,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: kDefaultPadding,
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5, vertical: kDefaultPadding / 2),
          child: Text(
            '${product!.description}',
            style: TextStyle(color: Colors.white, fontSize: 19),
          ),
        ),
      ],
    );
  }
}
