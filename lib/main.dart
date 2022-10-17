import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/components/constant.dart';
import 'package:store/screens/deatail.dart';

import 'screens/Home.dart';
import 'screens/Logn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          DeatailScreen.screenRoute: (context) => DeatailScreen(),
        },
        title: 'Store',
        theme: ThemeData(
            textTheme:
                GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
            primaryColor: kPrimaryColor,
            colorScheme:
                ColorScheme.fromSwatch().copyWith(secondary: kPrimaryColor)),
        home: Home(),
        debugShowCheckedModeBanner: false);
  }
}
