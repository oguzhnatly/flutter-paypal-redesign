import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/colors.dart';
import 'package:paypal/widgets/custom_box.dart';

class ActivityPage extends StatefulWidget {
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(
        physics: ScrollPhysics(),
        padding: EdgeInsets.only(top: 60, left: 25, right: 25),
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back, color: colorBlack),
                ),
                Text(
                  'Activity',
                  style: GoogleFonts.manrope(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: colorBlack,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search, color: colorBlack),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Stack(
              children: [
                Container(
                  width: 330,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: colorGray,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: colorPrimaryShade,
                      ),
                      child: Text(
                        'All',
                        style: GoogleFonts.manrope(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: colorWhite,
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      child: Text(
                        'Income',
                        style: GoogleFonts.manrope(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: colorBlack.withOpacity(0.5),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                      child: Text(
                        'Outcome',
                        style: GoogleFonts.manrope(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: colorBlack.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 8, left: 1),
                  child: Text(
                    'Today',
                    style: GoogleFonts.manrope(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: colorBlack.withOpacity(0.5),
                    ),
                  ),
                ),
                CustomBox(
                  label: 'Mike Rine',
                  text: '2 hours ago',
                  onRightArea: Text(
                    '+\$250',
                    style: GoogleFonts.manrope(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: colorGreen,
                    ),
                  ),
                ),
                CustomBox(
                  label: 'Google Drive',
                  text: 'Yesterday',
                  onLeftArea: SvgPicture.asset(
                    'assets/icons/google_drive.svg',
                    color: colorBlack,
                  ),
                  onRightArea: Text(
                    '-\$138.5',
                    style: GoogleFonts.manrope(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: colorRed,
                    ),
                  ),
                ),
                CustomBox(
                  label: 'Casey Smith',
                  text: '1 week ago',
                  onRightArea: Text(
                    '+\$531',
                    style: GoogleFonts.manrope(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: colorGreen,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 35, bottom: 8, left: 1),
                  child: Text(
                    'Yesterday',
                    style: GoogleFonts.manrope(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: colorBlack.withOpacity(0.5),
                    ),
                  ),
                ),
                CustomBox(
                  label: 'Apple Store',
                  text: 'Yesterday at 11:45 AM',
                  onLeftArea: SvgPicture.asset(
                    'assets/icons/apple_logo.svg',
                    color: colorBlack,
                  ),
                  onRightArea: Text(
                    '-\$250',
                    style: GoogleFonts.manrope(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: colorRed),
                  ),
                ),
                CustomBox(
                  label: 'Pizza Delivery',
                  text: 'Yesterday at 2:30 PM',
                  onLeftArea: SvgPicture.asset(
                    'assets/icons/pizza.svg',
                    color: colorBlack,
                  ),
                  onRightArea: Text(
                    '-\$58.9',
                    style: GoogleFonts.manrope(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: colorRed),
                  ),
                ),
                CustomBox(
                  label: 'Amazon.com',
                  text: 'Yesterday at 6:28 PM',
                  onLeftArea: SvgPicture.asset(
                    'assets/icons/amazon_logo.svg',
                    color: colorBlack,
                  ),
                  onRightArea: Text(
                    '-\$300',
                    style: GoogleFonts.manrope(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: colorRed),
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
