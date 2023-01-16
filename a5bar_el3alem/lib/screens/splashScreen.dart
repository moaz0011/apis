import 'dart:async';
import 'package:a5bar_el3alem/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class FristScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FristScreenState();
  }
}

class FristScreenState extends State<FristScreen> {
  static const colorizeColors = [
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.red,
];

static const colorizeTextStyle = TextStyle(
  fontSize: 50.0,
  fontFamily: 'Horizon',
);

  @override
  @override
  void initState() {
    //loginCheck();
    navigation();
    //loginCheck();
    super.initState();
  }

  // loginCheck() async {
  //   await Prefrence.init();

  //   if (await Prefrence.getString("user") != "null" &&
  //       await Prefrence.getString("pass") != "null") {
  //     Future.delayed(
  //         const Duration(milliseconds: 5000),
  //         () => Navigator.of(context).pushReplacement(
  //             MaterialPageRoute(builder: (context) => const Login())));
  //   } else {
  //     Future.delayed(
  //         const Duration(milliseconds: 5000),
  //         () => Navigator.of(context).pushReplacement(
  //             MaterialPageRoute(builder: (context) => First())));
  //   }
  // }

  Widget build(BuildContext context) {
    final logo = Image.asset(
      '',
      height: 200,
      width: 200,
    );
    return SafeArea(
        child: Scaffold(
            body: Container(
      color: Colors.black,
      alignment: Alignment.center,
      child: SizedBox(
  width: 250.0,
  child: AnimatedTextKit(
    animatedTexts: [
      ColorizeAnimatedText(
        'Bad News',
        textStyle: colorizeTextStyle,
        colors: colorizeColors,
      ),
      
    ],
    isRepeatingAnimation: true,
    onTap: () {
      print("Tap Event");
    },
  ),
),
    )));
  }

  navigation() {
    Future.delayed(
        const Duration(milliseconds: 300),
        () => Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) => FristScreen())));
  }
}