import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/colors.dart';

class SendMoneyPage extends StatefulWidget {
  @override
  _SendMoneyPageState createState() => _SendMoneyPageState();
}

class _SendMoneyPageState extends State<SendMoneyPage> {
  String numberBox = "150.00";
  String maxText = "Max Reached";

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: colorWhite,
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(top: 50, left: 25, right: 25),
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back, color: colorBlack),
                ),
                Text(
                  'Send Money',
                  style: GoogleFonts.manrope(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: colorBlack,
                  ),
                ),
                SizedBox(
                  width: 35,
                  height: 30,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 55,
                        height: 55,
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: colorGray, width: 2),
                        ),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: colorGray,
                          ),
                          child: Center(
                            child: Text(
                              "A",
                              style: GoogleFonts.manrope(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: colorBlack,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "To:",
                              style: GoogleFonts.manrope(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: colorBlack.withOpacity(0.5),
                              ),
                            ),
                            Text(
                              "Ann Nielsen",
                              style: GoogleFonts.manrope(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: colorBlack,
                              ),
                            ),
                            Text(
                              "nielsen.ann@gmail.com",
                              style: GoogleFonts.manrope(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: colorBlack.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: colorPrimary, width: 2),
              color: colorWhite,
              boxShadow: [
                BoxShadow(
                  color: colorPrimaryDark.withOpacity(0.1),
                  blurRadius: 50,
                  spreadRadius: -20,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '\$ ${numberBox.length > 10 ? maxText : numberBox}',
                    style: GoogleFonts.manrope(
                      fontSize: 42,
                      fontWeight: FontWeight.w600,
                      color: colorBlack,
                    ),
                  ),
                  Container(
                    width: 1,
                    height: 45,
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: colorPrimary),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            numberBox += "1";
                          });
                        },
                        child: calculateBoxes('1', null)),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            numberBox += "2";
                          });
                        },
                        child: calculateBoxes('2', null)),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            numberBox += "3";
                          });
                        },
                        child: calculateBoxes('3', null)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            numberBox += "4";
                          });
                        },
                        child: calculateBoxes('4', null)),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            numberBox += "5";
                          });
                        },
                        child: calculateBoxes('5', null)),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            numberBox += "6";
                          });
                        },
                        child: calculateBoxes('6', null)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            numberBox += "7";
                          });
                        },
                        child: calculateBoxes('7', null)),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            numberBox += "8";
                          });
                        },
                        child: calculateBoxes('8', null)),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            numberBox += "9";
                          });
                        },
                        child: calculateBoxes('9', null)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            numberBox += "0";
                          });
                        },
                        child: calculateBoxes('0', null)),
                    GestureDetector(
                        onTap: () {
                          if (!numberBox.endsWith(".") &&
                              numberBox.contains('.') != true) {
                            setState(() {
                              numberBox +=
                                  numberBox.isEmpty == true ? "0." : ".";
                            });
                          }
                        },
                        child: calculateBoxes('.', null)),
                    GestureDetector(
                      onTap: () {
                        if (numberBox.isEmpty != true) {
                          setState(() {
                            numberBox = numberBox.replaceAll(RegExp(r'.$'), "");
                          });
                        }
                      },
                      child: calculateBoxes(
                        null,
                        SvgPicture.asset(
                          'assets/icons/backspace.svg',
                          color: colorBlack,
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: size.width - 100,
                    height: 65,
                    margin: EdgeInsets.only(top: 28),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: colorPrimaryDark.withOpacity(0.5),
                          offset: Offset(0, 24),
                          blurRadius: 50,
                          spreadRadius: -18,
                        ),
                      ],
                      gradient: LinearGradient(
                        colors: [
                          colorPrimaryGradient,
                          colorPrimaryDark,
                        ],
                      ),
                    ),
                    child: Text(
                      'Send',
                      style: GoogleFonts.manrope(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        color: colorWhite,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget calculateBoxes(String number, SvgPicture icon) {
    return Container(
      height: 80,
      width: 80,
      margin: EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: colorWhite,
        boxShadow: [
          BoxShadow(
            color: colorPrimaryDark.withOpacity(0.1),
            blurRadius: 48,
            spreadRadius: -15,
            offset: Offset(20, 30),
          ),
        ],
      ),
      child: Center(
        child: icon == null
            ? Text(
                number,
                style: GoogleFonts.manrope(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: colorBlack,
                ),
              )
            : SvgPicture.asset(
                'assets/icons/backspace.svg',
                color: colorBlack,
              ),
      ),
    );
  }
}
