import 'package:booking_app/theme.dart';
import 'package:flutter/material.dart';

class ChooseSeat extends StatelessWidget {
  const ChooseSeat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackText.copyWith(fontWeight: semiBold, fontSize: 24),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            //! available
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/available.png'))),
            ),
            Text(
              'Available',
              style: blackText.copyWith(fontWeight: regular),
            ),

            //! selected
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6, left: 10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/selected.png'))),
            ),
            Text(
              'Selected',
              style: blackText.copyWith(fontWeight: regular),
            ),

            //! unavailable
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6, left: 10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/unavailable.png'))),
            ),
            Text(
              'Unavailable',
              style: blackText.copyWith(fontWeight: regular),
            )
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 30),
        decoration: BoxDecoration(
            color: whiteColor, borderRadius: BorderRadius.circular(18)),
        child: Column(
          children: [
            Row(
              //! seat indicator
              children: [
                Center(
                  child: Expanded(
                    child: Text(
                      'A',
                      style: greyText.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Center(
                  child: Expanded(
                    child: Text(
                      'A',
                      style: greyText.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Center(
                  child: Expanded(
                    child: Text(
                      'A',
                      style: greyText.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Center(
                  child: Expanded(
                    child: Text(
                      'A',
                      style: greyText.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Center(
                  child: Expanded(
                    child: Text(
                      'A',
                      style: greyText.copyWith(fontSize: 16),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          title(),
          seatStatus(),
          selectSeat(),
        ],
      ),
    );
  }
}
