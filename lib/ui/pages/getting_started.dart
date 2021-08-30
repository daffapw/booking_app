import 'package:booking_app/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:booking_app/theme.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/bg.png'))),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Text(
                'Fly Like A Bird',
                style: whiteText.copyWith(fontSize: 32, fontWeight: semiBold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Explore new world with us and let\n yourself get an amazing experiences',
              style: whiteText.copyWith(fontSize: 16, fontWeight: light),
              textAlign: TextAlign.center,
            ),
            CustomButton(width: 220, margin: EdgeInsets.only(top: 50, bottom: 80) ,title: 'Get Started', onPressed:(){
              Navigator.pushNamed(context, '/sign-up');
            },),
          ],
        )
      ]),
    );
  }
}
