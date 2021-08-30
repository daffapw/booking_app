import 'package:flutter/material.dart';
import 'package:booking_app/theme.dart';

class CustomTextField extends StatelessWidget {

  final String title;
  final String hintText;
  final bool obsecureText;

  const CustomTextField({Key? key, required this.title, required this.hintText, this.obsecureText = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: blackColor, // buat ubah cursor jadi item
            obscureText: obsecureText,
            decoration: InputDecoration(
                hintText: hintText,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: primaryColor))),
          )
        ],
      ),
    );
  }
}
