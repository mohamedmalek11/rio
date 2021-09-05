import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rio/constants/colors.dart';
import 'package:get/get.dart';
import 'package:rio/pages/notification.dart';

class Admin extends StatefulWidget {
  Admin({Key? key}) : super(key: key);

  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xfff0f0f0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(children: [
                  Positioned(
                      child: Container(
                    padding: EdgeInsets.only(top: 10),
                    height: MediaQuery.of(context).size.height / 3.42,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 15,
                            offset: Offset(0, 10),
                          )
                        ],
                        color: accent1.withOpacity(0.8),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(71),
                            bottomRight: Radius.circular(71))),
                    child: null,
                  )),
                  Positioned(
                    child: Container(
                      padding: EdgeInsets.only(top: 10),
                      height: MediaQuery.of(context).size.height / 3.5,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(70),
                              bottomRight: Radius.circular(70))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Subscribers",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                letterSpacing: 2),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "105",
                            style: TextStyle(
                                fontSize: 50,
                                color: secondary,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                letterSpacing: 2),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 35,
                ),

                // Admin Elements
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          child: Container(
                            width: 170,
                            height: 220,
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 7),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 15,
                                    offset: Offset(0, 10),
                                  )
                                ],
                                color: accent1.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        Positioned(
                          right: 2,
                          left: 0,
                          top: 0,
                          bottom: 2,
                          child: Container(
                            width: 170,
                            height: 220,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Opacity(
                                      opacity: 0.85,
                                      child: Image.asset(
                                          "assets/images/offer.png")),
                                )),
                                Container(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Text(
                                    "New Offer",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey[800],
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Positioned(
                          child: Container(
                            width: 170,
                            height: 220,
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 7),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 15,
                                    offset: Offset(0, 10),
                                  )
                                ],
                                color: accent1.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        Positioned(
                          right: 2,
                          left: 0,
                          top: 0,
                          bottom: 2,
                          child: Container(
                            width: 170,
                            height: 220,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Opacity(
                                      opacity: 0.85,
                                      child: Image.asset(
                                          "assets/images/users.png")),
                                )),
                                Container(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Text(
                                    "Subscribers",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey[800],
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),

                // Admin Elements
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          child: Container(
                            width: 170,
                            height: 220,
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 7),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 15,
                                    offset: Offset(0, 10),
                                  )
                                ],
                                color: accent1.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        Positioned(
                          right: 2,
                          left: 0,
                          top: 0,
                          bottom: 2,
                          child: Container(
                            width: 170,
                            height: 220,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Opacity(
                                      opacity: 0.85,
                                      child: Image.asset(
                                          "assets/images/call.png")),
                                )),
                                Container(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Text(
                                    "Contact Us",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey[800],
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        print("notification");
                        Get.to(() => NotificationPage());
                      },
                      child: Stack(
                        children: [
                          Positioned(
                            child: Container(
                              width: 170,
                              height: 220,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 7),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 0,
                                      blurRadius: 15,
                                      offset: Offset(0, 10),
                                    )
                                  ],
                                  color: accent1.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                          Positioned(
                            right: 2,
                            left: 0,
                            top: 0,
                            bottom: 2,
                            child: Container(
                              width: 170,
                              height: 220,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                      child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Opacity(
                                        opacity: 0.85,
                                        child: Image.asset(
                                            "assets/images/notification.png")),
                                  )),
                                  Container(
                                    padding: EdgeInsets.only(bottom: 20),
                                    child: Text(
                                      "Notifications",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.grey[800],
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  "Signout",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
