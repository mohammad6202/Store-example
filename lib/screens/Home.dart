import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/Wdgets/home_body.dart';
import 'package:store/components/constant.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppbar(),
      body: HomeBody(),
    );
  }

  AppBar homeAppbar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Text(
        "Welcome to the store",
        style: GoogleFonts.getFont('Lora'),
      ),
      centerTitle: true,
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
    );
  }
}
