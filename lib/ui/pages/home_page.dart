import 'package:booking_app/theme.dart';
import 'package:booking_app/ui/widgets/destination_card.dart';
import 'package:booking_app/ui/widgets/destination_file.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 30),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nDaffa Putra',
                    style:
                        blackText.copyWith(fontSize: 24, fontWeight: semiBold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Where to fly today?',
                    style: greyText.copyWith(fontSize: 14, fontWeight: light),
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image:
                      DecorationImage(image: AssetImage('assets/profpic.png'))),
            )
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        // biar bisa di scroll sama gakena overflow
        child: SingleChildScrollView(
          // arah scroll
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(name: 'Po River', city: 'Italy', image: 'assets/dest1.png'),
              DestinationCard(name: 'White Houses', city: 'Spain', image: 'assets/dest2.png'),
              DestinationCard(name: 'Monte Carlo', city: 'Monaco', image: 'assets/dest3.png'),
              DestinationCard(name: 'Pagoda', city: 'Japan', image: 'assets/dest4.png'),
              DestinationCard(name: 'Umbrella Forest', city: 'Singapore', image: 'assets/dest5.png'),

            ],
          ),
        ),
      );
    }

    Widget newDestinationFile(){
      return Container(
        margin: EdgeInsets.only(top: 30, right: defaultMargin, left: defaultMargin, bottom: 140),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('New This Year', style: blackText.copyWith(fontSize: 18, fontWeight: semiBold)),
            DestinationFile(name: 'Danau Beratan', city: 'Bali', image: 'assets/dest6.png'),
            DestinationFile(name: 'Sydney Opera', city: 'Australia', image: 'assets/dest7.png'),
            DestinationFile(name: 'Roma', city: 'Italy', image: 'assets/dest8.png'),
            DestinationFile(name: 'Umbrella Forest', city: 'Singapore', image: 'assets/dest5.png'),
            DestinationFile(name: 'Monte Carlo', city: 'Monaco', image: 'assets/dest3.png'),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestinationFile(),
      ],
    );
  }
}
