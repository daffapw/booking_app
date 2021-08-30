import 'package:booking_app/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:booking_app/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/wallet.png')),
            boxShadow: [
              BoxShadow(
                  color: primaryColor.withOpacity(0.5),
                  blurRadius: 50,
                  offset: Offset(0, 10))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: whiteText.copyWith(fontWeight: light),
                      ),
                      Text(
                        'Daffa Putra',
                        style: whiteText.copyWith(
                            fontSize: 20, fontWeight: medium),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/logo_airplane.png'),
                  )),
                ),
                Text(
                  'Pay',
                  style: whiteText.copyWith(fontSize: 16, fontWeight: medium),
                ),
              ],
            ),
            SizedBox(
              height: 41,
            ),
            Text(
              'Balance',
              style: whiteText.copyWith(fontWeight: light),
            ),
            Text(
              'IDR 280.000.000',
              style: whiteText.copyWith(fontWeight: medium, fontSize: 26),
            )
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Text(
          'Big Bonus 🎉',
          style: blackText.copyWith(fontWeight: semiBold, fontSize: 32),
        ),
      );
    }

    Widget subtitle() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Text(
          'We give you early credit so that\nyou can buy a flight ticket',
          style: greyText.copyWith(fontWeight: light, fontSize: 16),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget button() {
      return CustomButton(
          title: 'Start Fly Now',
          width: 220,
          margin: EdgeInsets.only(top: 50),
          onPressed: () {
            Navigator.pushNamed(context, '/main');
          });
    }

    return Scaffold(
      backgroundColor: greyBg,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [bonusCard(), title(), subtitle(), button()],
        ),
      ),
    );
  }
}
