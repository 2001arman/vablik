import 'dart:async';

import 'package:vablik/landing-page/landing-page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LandingPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color.fromRGBO(41, 50, 65, 1),
        ),
        child: Stack(
          children: [
            Container(
                margin: EdgeInsets.only(right: 10, left: 10),
                width: double.infinity,
                height: MediaQuery.of(context).size.height - 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/SplashScreen.png")))),
            Positioned(
              top: MediaQuery.of(context).size.height - 300,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "VABLIK",
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                        fontFamily: 'Arial',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 180),
                      child: Text(
                        "by Unmul",
                        textAlign: TextAlign.end,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 70),
                    Row(
                      children: [
                        Spacer(),
                        Container(
                          width: 70,
                          height: 70,
                          margin: EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/icons/LogoUnmul.png"),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          child: Text(
                            "Universitas Mulawarman",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/icons/Akreditas.png"))),
                        ),
                        Spacer(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
