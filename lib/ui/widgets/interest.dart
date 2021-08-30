import 'package:flutter/material.dart';
import 'package:booking_app/theme.dart';

class Interest extends StatelessWidget {

  final String interest;
  const Interest({Key? key, required this.interest}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/checklist.png'))),
          ),
          Text(
            'Hotel',
            style: blackText,
          )
        ],
      ),
    );
  }
}
