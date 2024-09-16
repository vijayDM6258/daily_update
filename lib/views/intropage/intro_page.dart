import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  // Future<void> CheckPref() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   await preferences.setBool("IsIntroVisited", true);
  // }
  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   CheckPref();
  //   Timer(
  //     Duration(seconds: 5),
  //     () {
  //       Navigator.pushReplacementNamed(context, "/");
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hello Welocome Back"),
      ),
    );
  }
}
