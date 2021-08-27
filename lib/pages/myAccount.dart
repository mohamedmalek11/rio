import 'package:flutter/material.dart';

class MyAccountPage extends StatefulWidget {
  MyAccountPage({Key? key}) : super(key: key);

  @override
  MyAccountPageState createState() => MyAccountPageState();
}

class MyAccountPageState extends State<MyAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          "My Account",
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Stack(children: [
        // Background image and overlay
        Container(
          color: Colors.black,
          child: Opacity(
            opacity: 0.2,
            child: Container(
                child: Image.asset(
                  "assets/images/7.jpeg",
                  fit: BoxFit.cover,
                ),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width),
          ),
        ),

        // the page content:
        Container(
          margin: EdgeInsetsDirectional.only(top: 60),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
              ),

              // person Image
              Stack(children: [
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2.0,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 120,
                      backgroundImage:
                          AssetImage("assets/images/dummy/demo1.png"),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 40,
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/images/plus1.png",
                      width: 40,
                      height: 40,
                    ),
                  ),
                )
              ]),
              SizedBox(
                height: 55,
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  "Mohamed Malek",
                  style: TextStyle(fontSize: 36),
                ),
              ),

              SizedBox(
                height: 40,
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Player ID \n",
                        style: TextStyle(fontSize: 16, height: 2),
                        children: const <TextSpan>[
                          TextSpan(
                              text: '9538235681',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 25,
                              )),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Renew Date \n",
                        style: TextStyle(fontSize: 16, height: 2),
                        children: const <TextSpan>[
                          TextSpan(
                              text: '23/9/2022',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w400)),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 40,
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Days Available \n",
                        style: TextStyle(fontSize: 16, height: 2),
                        children: const <TextSpan>[
                          TextSpan(
                              text: '12',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 25,
                              )),
                               TextSpan(
                              text: ' Days',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 25,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
