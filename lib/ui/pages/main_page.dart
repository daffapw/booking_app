import 'package:booking_app/ui/pages/home_page.dart';
import 'package:booking_app/ui/widgets/custom_buttonnav.dart';
import 'package:flutter/material.dart';
import 'package:booking_app/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget buildContent(){
      return HomePage();
    }

    Widget customBotNav() {
      return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 60,
            margin: EdgeInsets.only(bottom: 30, right: 30, left: 30),
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(18)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomBotNavItem(image: 'assets/icon_home.png', isSelected: true,),
                CustomBotNavItem(image: 'assets/icon_book.png'),
                CustomBotNavItem(image: 'assets/icon_wallet.png'),
                CustomBotNavItem(image: 'assets/icon_settings.png'),
              ],  
            ),
          ));
    }

    return Scaffold(
      body: Stack(children: [
        buildContent(),
        customBotNav(),
      ]),
    );
  }
}
