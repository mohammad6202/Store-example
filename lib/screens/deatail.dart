import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/Wdgets/deatails_body.dart';
import 'package:store/components/constant.dart';
import 'package:store/models/product.dart';

class DeatailScreen extends StatelessWidget {
  const DeatailScreen({super.key, this.product});
  final Product? product;
  static const String screenRoute = "DetailScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: Appbar(context),
      body: DetailBody(product: product),
    );
  }

  AppBar Appbar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
          padding: EdgeInsets.only(right: kDefaultPadding),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: kPrimaryColor,
          )),
      title: Text(
        "back",
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
