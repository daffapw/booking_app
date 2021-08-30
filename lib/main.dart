import 'package:booking_app/ui/pages/bonus_page.dart';
import 'package:booking_app/ui/pages/main_page.dart';
import 'package:booking_app/ui/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'ui/pages/splash_page.dart';
import 'ui/pages/getting_started.dart';
import 'ui/pages/signup_page.dart';

void main() {
  runApp(BookingApp());
}

class BookingApp extends StatelessWidget {
  const BookingApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStarted(),
        '/sign-up': (context) => SignUp(),
        '/bonus-page': (context) => BonusPage(),
        '/main': (context) => MainPage(),

        
      },
    );
  }
}