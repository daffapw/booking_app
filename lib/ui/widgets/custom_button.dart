import 'package:flutter/material.dart';
import 'package:booking_app/theme.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;

  const CustomButton(
      {Key? key,
      required this.title,
      required this.width,
      required this.onPressed,
      this.margin = EdgeInsets.zero})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      margin: margin,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultRadius))),
          onPressed: () {
            onPressed();
          },
          child: Text(
            title,
            style: whiteText.copyWith(fontSize: 18, fontWeight: medium),
          )),
    );
  }
}
