import 'dart:async';
import 'package:flutter/material.dart';
import 'package:booking_app/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // implement initState
  void initState(){
    Timer(Duration(seconds: 3), (){
      Navigator.pushNamed(context, '/get-started');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/logo_airplane.png'))),
            ),
            Text('AIRPLANE', style: whiteText.copyWith(
              fontSize: 32, fontWeight: medium, letterSpacing: 10
            ),)
          ],
        ),
      ),
    );
  }
}
