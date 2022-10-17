import 'package:flutter/material.dart';

import '../components/constant.dart';

class DotColor extends StatelessWidget {
  const DotColor({
    Key? key,
    this.fillColor,
    this.isSelected = false,
  }) : super(key: key);
  final Color? fillColor;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      padding: EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: isSelected ? kTextLightColor : Colors.transparent)),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: fillColor),
      ),
    );
  }
}
