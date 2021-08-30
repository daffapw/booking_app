import 'package:flutter/material.dart';
import 'package:booking_app/theme.dart';

class DestinationFile extends StatelessWidget {
  
  final String name;
  final String city;
  final String image;
  final double rating;

  const DestinationFile({ Key? key, required this.name, required this.city, required this.image, this.rating = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(18)
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image))
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: blackText.copyWith(fontSize: 18, fontWeight: medium),),
                Text(city, style: greyText.copyWith(fontWeight: light),)
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 31),
                width: 46,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/Star.png'))
                ),
              ),
              Text(rating.toString(), style: blackText.copyWith(fontWeight: medium),)
            ],
          )
        ],
      ),
    );
  }
}