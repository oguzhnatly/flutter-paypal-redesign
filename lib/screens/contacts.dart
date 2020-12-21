import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal/colors.dart';
import 'package:paypal/widgets/custom_box.dart';

class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
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
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back, color: colorBlack),
                ),
                Text(
                  'Contacts',
                  style: GoogleFonts.manrope(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: colorBlack,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add, color: colorBlack),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: TextField(
              style: GoogleFonts.manrope(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
              decoration: InputDecoration(
                hintText: 'Enter a name or e-mail',
                fillColor: colorBlack.withOpacity(0.5),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: colorBlack.withOpacity(0.5),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomBox(
                    label: 'Andrew Dillan', text: 'andrew.dillan@gmail.com'),
                CustomBox(label: 'Alex Millton', text: 'alxmillton@yahoo.com'),
                CustomBox(label: 'Don Norman', text: '@donnorman'),
                CustomBox(label: 'Jason Craig', text: '@craig90'),
                CustomBox(label: 'Mike Rine', text: 'mikerine@gmail.com'),
                CustomBox(label: 'Nick Aeron', text: 'aeronn@gmail.com'),
                CustomBox(label: 'Vena Sunny', text: '@venasunny'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
