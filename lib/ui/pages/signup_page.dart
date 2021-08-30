import 'package:booking_app/ui/widgets/custom_button.dart';
import 'package:booking_app/ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:booking_app/theme.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsetsDirectional.only(top: 30),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackText.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget inputSection() {
      Widget fnameInput() {
        return CustomTextField(title: 'Full Name', hintText: 'Your Full Name');
      }

      Widget emailInput() {
        return CustomTextField(title: 'Email adress', hintText: 'Your email address');
      }

      Widget passInput() {
        return CustomTextField(title: 'Password', hintText: 'Enter 8-12 characters', obsecureText: true,);
      }

      Widget hobbyInput() {
        return CustomTextField(title: 'Hobby', hintText: 'Your hobby');
      }

      Widget button() {
        return CustomButton(title: 'Get Started', width: double.infinity, onPressed: (){
          Navigator.pushNamed(context, '/bonus-page');
        });
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            fnameInput(),
            emailInput(),
            passInput(),
            hobbyInput(),
            button(),
          ],
        ),
      );
    }

    Widget tacButton() {
        return Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 50, bottom: 73),
          child: Text(
            'Terms and Conditions',
            style: greyText.copyWith(
                fontSize: 16,
                fontWeight: light,
                decoration: TextDecoration.underline),
          ),
        );
      }

    return Scaffold(
      backgroundColor: greyBg,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [title(), inputSection(), tacButton()],
        ),
      ),
    );
  }
}
