import 'package:flutter/material.dart';
import 'package:booking_app/theme.dart';

class CustomBotNavItem extends StatelessWidget {

  final bool isSelected;
  final String image;

  const CustomBotNavItem({ Key? key, required this.image, this.isSelected = false}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image))),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
              color: isSelected ? primaryColor : whiteColor, borderRadius: BorderRadius.circular(18)),
        )
      ],
    );
  }
}
