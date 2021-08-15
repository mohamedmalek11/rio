import 'package:flutter/material.dart';
import 'package:rio/components/input.dart';
import 'package:rio/constants/colors.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Background Image
          Container(
            child: Image.asset(
              "assets/images/i2.png",
              fit: BoxFit.cover,
            ),
            height: MediaQuery.of(context).size.height,
          ),

          // The Forground Shadow
          Container(
              width: MediaQuery.of(context).size.width,
              color: mainColor.withOpacity(0.9),
              child: Container(
                padding:
                    EdgeInsets.only(top: 40, right: 20, left: 20, bottom: 30),

                // The Page lelments
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      child: Image.asset("assets/images/logo2.png"),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 50),
                      child: Text(
                        "Sign in",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 60),
                        child: inputComponent(
                            "Enter your name", "Name", 20, TextInputType.name)),
                    Container(
                        padding: EdgeInsets.only(top: 60),
                        child: inputComponent("Enter your player ID",
                            "player ID", 8, TextInputType.number)),
                    Container(
                        padding: EdgeInsets.only(top: 60),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: accent1,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(50.0),
                              )),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 14),
                            child: Text(
                              "Sign In",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        )),
                    Expanded(
                      flex: 1,
                      child: Container(
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.only(bottom: 10),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "New Member?",
                              style: TextStyle(color: accent1, fontSize: 16),
                            ),
                          )),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
