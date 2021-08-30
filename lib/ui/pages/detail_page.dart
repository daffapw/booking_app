import 'package:booking_app/theme.dart';
import 'package:booking_app/ui/pages/choose_seat_page.dart';
import 'package:booking_app/ui/widgets/custom_button.dart';
import 'package:booking_app/ui/widgets/interest.dart';
import 'package:booking_app/ui/widgets/photo_item.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/dest1.png'))),
      );
    }

    Widget customShadow() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              whiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95)
            ])),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          children: [
            // emblem
            Container(
              width: 108,
              height: 24,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('assets/emblem.png'))),
            ),
            // title
            Container(
              margin: EdgeInsets.only(top: 256),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Po River',
                          style: whiteText.copyWith(
                              fontSize: 24, fontWeight: semiBold),
                        ),
                        Text(
                          'Italy',
                          style: whiteText.copyWith(
                              fontSize: 18, fontWeight: light),
                        )
                      ],
                    ),
                  ),
                  Row(
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
                        '4.5',
                        style: whiteText.copyWith(fontWeight: medium),
                      )
                    ],
                  )
                ],
              ),
            ),

            //desc
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(18)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // about
                  Text(
                    'About',
                    style:
                        blackText.copyWith(fontSize: 16, fontWeight: semiBold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Bodincus or Bodencus) is the longest river in Italy. It is a river that flows eastward across northern Italy starting from the Cottian Alps. The Po flows either 652 km (405 mi) or 682 km (424 mi) – considering the length of the Maira, a right bank tributary.',
                    style: blackText.copyWith(fontWeight: regular, height: 1.7),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Photos',
                    style:
                        blackText.copyWith(fontSize: 16, fontWeight: semiBold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      PhotoItem(image: 'assets/imgphoto1.png'),
                      PhotoItem(image: 'assets/imgphoto2.png'),
                      PhotoItem(image: 'assets/imgphoto3.png')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Interest',
                    style:
                        blackText.copyWith(fontSize: 16, fontWeight: semiBold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Interest(interest: 'Hotel'),
                      Interest(interest: 'Restaurant'),
                    ],
                  ),
                  Row(
                    children: [
                      Interest(interest: 'City Museum'),
                      Interest(interest: 'Honor Bridge'),
                    ],
                  ),
                ],
              ),
            ),
            // price & book button
            Container(
              margin: EdgeInsets.only(top: 10, left: defaultMargin),
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('IDR 2.500.000', style: blackText.copyWith(
                          fontSize: 18, fontWeight: medium
                        ),),
                        SizedBox(height: 5,),
                        Text('per person', style: greyText.copyWith(fontWeight: light),)
                      ],
                    ),
                  ),
                  CustomButton(title: 'Book Now', width: 170, onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseSeat()));
                  })
                ],
              ),
            ),
            
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            customShadow(),
            content(),
          ],
        ),
      ),
    );
  }
}
