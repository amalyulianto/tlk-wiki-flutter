import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tlk_wiki/screens/home_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  static const id = '/splash_screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final spinKit = SpinKitRing(
    color: Colors.grey,
  );

  startTime() {
    var _duration = Duration(seconds: 2);
    return Timer(_duration, navigationRoute);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  void navigationRoute() {
    Navigator.pushNamed(context, HomeScreen.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          // color: new Color.fromRGBO(255, 0, 0, 0.5),
          image: DecorationImage(
            image: AssetImage('assets/images/the_last_kingdom.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Container(
          margin: EdgeInsets.only(top: 450.0),
          child: spinKit,
        ),
      ),
    );
  }
}
