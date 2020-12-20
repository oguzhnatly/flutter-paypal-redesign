import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/colors.dart';
import 'package:paypal/widgets/custom_box.dart';

class WalletScreen extends StatefulWidget {
  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(
        physics: ScrollPhysics(),
        padding: EdgeInsets.all(0),
        children: [
          Container(
            height: 300,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: colorPrimaryDark.withOpacity(0.5),
                        blurRadius: 40,
                        spreadRadius: -20,
                        offset: Offset(0, 16),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: size.width,
                        height: 220,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              colorPrimaryGradient,
                              colorPrimaryDark,
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: -180,
                        width: 400,
                        height: 420,
                        child: Opacity(
                          opacity: 0.75,
                          child: SvgPicture.asset(
                              'assets/images/paypal_backlogo.svg'),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 15,
                  left: size.width / 2 - 75,
                  width: 160,
                  height: 160,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: colorWhite),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/avatar.png'),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  right: 35,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back, color: colorWhite),
                      ),
                      Text(
                        'Your Wallet',
                        style: GoogleFonts.manrope(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: colorWhite,
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/edit.svg',
                        color: colorWhite,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30, left: 50, right: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Personal info',
                  style: GoogleFonts.manrope(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: colorBlack.withOpacity(0.5),
                  ),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20, right: 30),
                          child: Text(
                            'Name',
                            style: GoogleFonts.manrope(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: colorBlack,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, right: 30),
                          child: Text(
                            'E-Mail',
                            style: GoogleFonts.manrope(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: colorBlack,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, right: 30),
                          child: Text(
                            'Phone',
                            style: GoogleFonts.manrope(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: colorBlack,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20, right: 30),
                          child: Text(
                            'Vadim Demenko',
                            style: GoogleFonts.manrope(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: colorBlack,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, right: 30),
                          child: Text(
                            'vadikforz@gmail.com',
                            style: GoogleFonts.manrope(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: colorBlack,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, right: 30),
                          child: Text(
                            '+4 1782 049 294',
                            style: GoogleFonts.manrope(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: colorBlack,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 40, left: 50, right: 50),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My banking cards',
                      style: GoogleFonts.manrope(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: colorBlack.withOpacity(0.5),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: colorBlack.withOpacity(0.5),
                          size: 20,
                        ),
                        Text(
                          'Add',
                          style: GoogleFonts.manrope(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: colorBlack.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 7),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomBox(
                        label: 'Visa',
                        text: '4*** **** ****2 4746',
                        onLeftAreaBackground: colorWhite,
                        onLeftArea: SvgPicture.asset(
                          'assets/icons/visa.svg',
                          color: colorBlack,
                        ),
                      ),
                      CustomBox(
                        label: 'Mastercard',
                        text: '4*** **** ****3 5236',
                        onLeftAreaBackground: colorWhite,
                        onLeftArea: SvgPicture.asset(
                          'assets/icons/mastercard.svg',
                          color: colorBlack,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
