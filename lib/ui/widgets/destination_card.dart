import 'package:booking_app/ui/pages/detail_page.dart';
import 'package:flutter/material.dart';
import '../../theme.dart';

class DestinationCard extends StatelessWidget {
  final String name;
  final String city;
  final String image;
  final double rating;

  const DestinationCard(
      {Key? key,
      required this.name,
      required this.city,
      required this.image,
      this.rating = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Container(
        width: 200,
        height: 323,
        margin: EdgeInsets.only(left: defaultMargin),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: whiteColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 180,
              height: 220,
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image)),
                  borderRadius: BorderRadius.circular(18)),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 55,
                  height: 30,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(18))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 20,
                        height: 24,
                        margin: EdgeInsets.only(right: 2),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/Star.png'))),
                      ),
                      Text(
                        rating.toString(),
                        style: blackText.copyWith(fontWeight: medium),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: blackText.copyWith(fontSize: 18, fontWeight: medium),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    city,
                    style: greyText.copyWith(fontWeight: light),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
