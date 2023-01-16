import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
 

  @override
  Widget build(BuildContext context) {
    final logo = Image.asset(
     "",
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
    );

    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xff2E0D72),
            body: /*Container(
              alignment: Alignment.center,
              child: logo,
            )*/
                Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Hello world!',
                    textStyle: const TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    speed: const Duration(milliseconds: 500),
                  ),
                ],
                totalRepeatCount: 4,
                //pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
              
            ))
            
            );

  }
}
