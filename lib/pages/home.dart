import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rio/constants/colors.dart';
import 'package:rio/pages/myAccount.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var borderRadios = 20.0;

  // change App bar color on scroll
  var appBarColor = Colors.transparent;

  onScroll(ScrollMetrics metrics) {
    appBarColor = Colors.black;
    setState(() {
      if (metrics.pixels > 10) {
        print(metrics.pixels);
        appBarColor = Colors.black;
      } else if (metrics.pixels <= 10) {
        print(metrics.pixels);
        appBarColor = Colors.transparent;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.phone,
            color: Colors.white,
          )),
      appBar: AppBar(
        leading: Container(),
        title: Image.asset(
          "assets/images/logo1.png",
          fit: BoxFit.contain,
          height: 60,
        ),
        backgroundColor: appBarColor,
        elevation: 0.0,
        centerTitle: true,
        toolbarHeight: 70,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                icon: Icon(
                  Icons.settings,
                  size: 30,
                ),
                onPressed: () {
                  Get.to(() => MyAccountPage());
                }),
          )
        ],
      ),
      body: Stack(
        children: [
          // Background Image
          Container(
            child: Image.asset(
              "assets/images/i4.png",
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
                    EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 0),

                // The Page lelments

                // change App bar color on scroll
                child: NotificationListener<ScrollNotification>(
                  onNotification: (notification) {
                    // see if the scroll start and call to change app bar color
                    if (notification is ScrollStartNotification) {
                      onScroll(notification.metrics);
                    } else if (notification is ScrollUpdateNotification) {
                      onScroll(notification.metrics);
                    }
                    return true;
                  },
                  child: ListView(
                    children: [
                      // Start

                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 0),
                            height: 200,
                            width: 600,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(borderRadios),
                              ),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(borderRadios),
                                child: Image.asset(
                                  "assets/images/dummy/4.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          // content container
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(borderRadios),
                              color: mainColor.withOpacity(0.9),
                            ),
                            margin: EdgeInsets.only(top: 0),
                            height: 200,
                            width: 600,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: Column(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 20),
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        children: const <TextSpan>[
                                          TextSpan(
                                              text:
                                                  'Three months and one month free',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xffffffff),
                                                  fontSize: 30)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        children: const <TextSpan>[
                                          TextSpan(
                                              text:
                                                  'Get a month for free when you subscribe for 3 months Subscription price 1500 pounds This offer is valid until the end of the year',
                                              style: TextStyle(
                                                  fontSize: 15, height: 1.6)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Start

                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            height: 200,
                            width: 600,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(borderRadios),
                              ),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(borderRadios),
                                child: Image.asset(
                                  "assets/images/dummy/6.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          // content container
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(borderRadios),
                              color: mainColor.withOpacity(0.9),
                            ),
                            margin: EdgeInsets.only(top: 20),
                            height: 200,
                            width: 600,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: Column(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 20),
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        children: const <TextSpan>[
                                          TextSpan(
                                              text:
                                                  'Subscribe 6 months for 2500 EGP',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xffffffff),
                                                  fontSize: 30)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        children: const <TextSpan>[
                                          TextSpan(
                                              text:
                                                  'For a limited time, subscribe to the 6-month offer for 2500 instead of 3500 pounds, this throne is valid until the end of the year',
                                              style: TextStyle(
                                                  fontSize: 15, height: 1.6)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Start

                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            height: 200,
                            width: 600,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(borderRadios),
                              ),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(borderRadios),
                                child: Image.asset(
                                  "assets/images/dummy/5.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          // content container
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(borderRadios),
                              color: mainColor.withOpacity(0.9),
                            ),
                            margin: EdgeInsets.only(top: 20),
                            height: 200,
                            width: 600,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: Column(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 20),
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        children: const <TextSpan>[
                                          TextSpan(
                                              text: 'Eid al-Adha offer',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xffffffff),
                                                  fontSize: 30)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        children: const <TextSpan>[
                                          TextSpan(
                                              text:
                                                  'A special offer for Eid Al-Adha, you can register a 3-month subscription for 1200 instead of 1500 EGP. The offer is valid until the end of Eid Al-Adha',
                                              style: TextStyle(
                                                  fontSize: 15, height: 1.6)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Start

                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            height: 200,
                            width: 600,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(borderRadios),
                              ),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(borderRadios),
                                child: Image.asset(
                                  "assets/images/dummy/5.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          // content container
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(borderRadios),
                              color: mainColor.withOpacity(0.9),
                            ),
                            margin: EdgeInsets.only(top: 20),
                            height: 200,
                            width: 600,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: Column(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 20),
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        children: const <TextSpan>[
                                          TextSpan(
                                              text: 'Eid al-Adha offer',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xffffffff),
                                                  fontSize: 30)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        children: const <TextSpan>[
                                          TextSpan(
                                              text:
                                                  'A special offer for Eid Al-Adha, you can register a 3-month subscription for 1200 instead of 1500 EGP. The offer is valid until the end of Eid Al-Adha',
                                              style: TextStyle(
                                                  fontSize: 15, height: 1.6)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
