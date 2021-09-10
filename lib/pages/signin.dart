import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rio/components/input.dart';
import 'package:rio/constants/colors.dart';
import 'package:rio/pages/Admin.dart';
import 'package:rio/pages/home.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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

                // The Page Elelments
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      child: Image.asset("assets/images/logo2.png"),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        "Sign in",
                        style: TextStyle(fontSize: 40,color: Colors.white),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 30),
                        child: inputComponent(
                            "Enter your name", "Name", 20, TextInputType.name)),
                    Container(
                        padding: EdgeInsets.only(top: 30),
                        child: inputComponent("Enter your player ID",
                            "player ID", 8, TextInputType.number)),
                    Container(
                        padding: EdgeInsets.only(top: 40),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: accent1,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(50.0),
                              )),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 14),
                            child: Text(
                              "Sign In",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        )),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: accent1, width: 1),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                        ),
                        onPressed: () {
                          Get.to(() => MyHomePage(),
                              transition: Transition.native);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          child: Text(
                            "New Member?",
                            style: TextStyle(color: accent1, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.only(),
                          child: TextButton(
                            onPressed: () {
                              Get.to(() => Admin(),
                                  transition: Transition.native);
                            },
                            child: Text(
                              "Admin",
                              style: TextStyle(color: Colors.white24, fontSize: 16),
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
