import 'package:flutter/material.dart';
import 'package:booking_app/theme.dart';

class PhotoItem extends StatelessWidget {

  final String image;

  const PhotoItem({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(image))),
    );
  }
}
