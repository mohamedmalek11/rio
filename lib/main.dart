import 'package:flutter/material.dart';
import 'package:rio/constants/colors.dart';
import 'package:rio/pages/home.dart';
import 'package:rio/pages/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Rio fight Club',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: mainColor,
            accentColor: accent1,
            primarySwatch: Colors.deepOrange,
            textTheme: TextTheme(
                bodyText1: TextStyle(color: Colors.white),
                bodyText2: TextStyle(color: Colors.white)),
            inputDecorationTheme: InputDecorationTheme(
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(),
                fillColor: Colors.white,
                hoverColor: Colors.white60)),
        home: SignIn(),
        routes: {
          "homePage": (context) {
            return MyHomePage();
          },
        });
  }
}
