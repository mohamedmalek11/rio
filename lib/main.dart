import 'package:flutter/material.dart';
import 'package:rio/constants/colors.dart';
import 'package:rio/pages/signin.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Rio fight Club',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: mainColor,
          accentColor: accent1,
          primarySwatch: Colors.deepOrange,
          textTheme: TextTheme(
              bodyText1: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 14),
              bodyText2: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 14)),
          inputDecorationTheme: InputDecorationTheme(
              labelStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(),
              fillColor: Colors.white,
              hoverColor: Colors.white60)),
      home: SignIn(),
    );
  }
}
