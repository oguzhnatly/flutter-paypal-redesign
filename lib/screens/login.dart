import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/colors.dart';
import 'package:paypal/widgets/bottom_navigation_bar.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: colorWhite,
      body: ListView(
        padding: EdgeInsets.only(left: 55, right: 55, top: 100),
        physics: BouncingScrollPhysics(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 40),
                child: SvgPicture.asset('assets/images/paypal_logo.svg'),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                child: TextField(
                  textAlign: TextAlign.center,
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter your name or e-mail',
                    fillColor: colorBlack,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, bottom: 30),
                child: TextField(
                  textAlign: TextAlign.center,
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    fillColor: colorBlack,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: colorPrimaryDark.withOpacity(0.5),
                      offset: Offset(0, 24),
                      blurRadius: 50,
                      spreadRadius: -18,
                    ),
                  ],
                ),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavigationBarCustom(),
                      ),
                    );
                  },
                  textColor: colorWhite,
                  padding: EdgeInsets.all(0),
                  shape: StadiumBorder(),
                  child: Container(
                    width: size.width - 110,
                    height: 65,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          colorPrimaryGradient,
                          colorPrimaryDark,
                        ],
                      ),
                    ),
                    child: Text(
                      'Log in',
                      style: GoogleFonts.manrope(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 65),
                child: Text(
                  'Having trouble logging in?',
                  style: GoogleFonts.manrope(
                    color: colorBlack.withOpacity(0.5),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 28),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: colorGray,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SizedBox(
                  height: 0,
                  width: 65,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 22, bottom: 22),
                child: Text(
                  'Sign Up',
                  style: GoogleFonts.manrope(
                    color: colorBlack.withOpacity(0.5),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
