import 'package:flutter/material.dart';
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Container(),
        title: Image.asset(
          "assets/images/logo1.png",
          fit: BoxFit.contain,
          height: 70,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
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
                onPressed: () {}),
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
                    EdgeInsets.only(top: 40, right: 20, left: 20, bottom: 30),

                // The Page lelments
                child: Column(
                  children: [
                    Divider(
                      height: 70,
                    ),
                    Container(
                      height: 100,
                      child: Image.asset("assets/images/logo2.png"),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 50),
                      child: Text(
                        "Home Page",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
