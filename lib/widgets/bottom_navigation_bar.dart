import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/colors.dart';
import 'package:paypal/screens/contacts.dart';
import 'package:paypal/screens/home.dart';
import 'package:paypal/screens/wallet.dart';

class BottomNavigationBarCustom extends StatefulWidget {
  @override
  _BottomNavigationBarCustomState createState() =>
      _BottomNavigationBarCustomState();
}

class _BottomNavigationBarCustomState extends State<BottomNavigationBarCustom>
    with TickerProviderStateMixin {
  int _selectedIndex = 0;
  int boxAnimationDuration = 600;
  int pageAnimationDuration = 500;
  Cubic pageAnimationType = Curves.ease;
  Cubic boxAnimationType = Curves.ease;
  double boxWidthNormal = 40;
  double boxWidthExpanded = 90;

  PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      onPageChanged: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      children: [
        HomePage(),
        ContactsPage(),
        WalletScreen(),
        Text('Screen4'),
        Text('Screen5'),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          buildPageView(),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: 65,
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
              decoration: BoxDecoration(
                color: colorWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: colorPrimaryDark.withOpacity(0.1),
                    blurRadius: 45,
                    spreadRadius: -15,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedSize(
                    duration: Duration(milliseconds: boxAnimationDuration),
                    curve: boxAnimationType,
                    vsync: this,
                    child: GestureDetector(
                      onTap: () => setState(() {
                        _selectedIndex = 0;
                        _pageController.animateToPage(0,
                            duration:
                                Duration(milliseconds: pageAnimationDuration),
                            curve: pageAnimationType);
                      }),
                      child: Container(
                        width: _selectedIndex == 0
                            ? boxWidthExpanded
                            : boxWidthNormal,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/home.svg',
                              color: _selectedIndex == 0
                                  ? colorPrimary
                                  : colorBlack,
                            ),
                            _selectedIndex == 0
                                ? Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Text(
                                      'Home',
                                      style: GoogleFonts.manrope(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: colorPrimary,
                                      ),
                                    ),
                                  )
                                : SizedBox(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  AnimatedSize(
                    duration: Duration(milliseconds: boxAnimationDuration),
                    curve: boxAnimationType,
                    vsync: this,
                    child: GestureDetector(
                      onTap: () => setState(() {
                        _selectedIndex = 1;
                        _pageController.animateToPage(1,
                            duration:
                                Duration(milliseconds: pageAnimationDuration),
                            curve: pageAnimationType);
                      }),
                      child: Container(
                        width: _selectedIndex == 1
                            ? boxWidthExpanded
                            : boxWidthNormal,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/users.svg',
                              color: _selectedIndex == 1
                                  ? colorPrimary
                                  : colorBlack,
                            ),
                            _selectedIndex == 1
                                ? Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Text(
                                      'Contacts',
                                      style: GoogleFonts.manrope(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: colorPrimary,
                                      ),
                                    ),
                                  )
                                : SizedBox(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  AnimatedSize(
                    duration: Duration(milliseconds: boxAnimationDuration),
                    curve: boxAnimationType,
                    vsync: this,
                    child: GestureDetector(
                      onTap: () => setState(() {
                        _selectedIndex = 2;
                        _pageController.animateToPage(2,
                            duration:
                                Duration(milliseconds: pageAnimationDuration),
                            curve: pageAnimationType);
                      }),
                      child: Container(
                        width: _selectedIndex == 2
                            ? boxWidthExpanded
                            : boxWidthNormal,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/wallet.svg',
                              color: _selectedIndex == 2
                                  ? colorPrimary
                                  : colorBlack,
                            ),
                            _selectedIndex == 2
                                ? Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Text(
                                      'Wallet',
                                      style: GoogleFonts.manrope(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: colorPrimary,
                                      ),
                                    ),
                                  )
                                : SizedBox(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  AnimatedSize(
                    duration: Duration(milliseconds: boxAnimationDuration),
                    curve: boxAnimationType,
                    vsync: this,
                    child: GestureDetector(
                      onTap: () => setState(() {
                        _selectedIndex = 3;
                        _pageController.animateToPage(3,
                            duration:
                                Duration(milliseconds: pageAnimationDuration),
                            curve: pageAnimationType);
                      }),
                      child: Container(
                        width: _selectedIndex == 3
                            ? boxWidthExpanded
                            : boxWidthNormal,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/setting.svg',
                              color: _selectedIndex == 3
                                  ? colorPrimary
                                  : colorBlack,
                            ),
                            _selectedIndex == 3
                                ? Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Text(
                                      'Settings',
                                      style: GoogleFonts.manrope(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: colorPrimary,
                                      ),
                                    ),
                                  )
                                : SizedBox(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
