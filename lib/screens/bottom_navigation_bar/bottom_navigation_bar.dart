import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:greencity/screens/notice_add/notice_show.dart';
import 'package:greencity/screens/registration_page/registration_page.dart';
import 'package:greencity/utils/colors.dart';
import 'package:greencity/utils/icons.dart';
import 'package:greencity/utils/images.dart';
import 'package:greencity/utils/strings.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../common/image.dart';
import '../../common/text.dart';
import '../homescreen/homescreen_page.dart';
import '../member_page/member_screen.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const HomeScreenDemo(),
    const MemberList(),
    const ShowNoticeScreen(),
    const Registration()
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: HexColor('4963dc'),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOutBack,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      drawer: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 50,
                right: 50,
                top: 50,
                bottom: 25,
              ),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  size: 90,
                  color: Colors.black38,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                bottom: 10,
              ),
              child: Text(
                txtDrawerTitle,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            const Text(
              txtadress,
              style: TextStyle(
                color: Colors.white54,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              indent: 15,
              color: Colors.white,
            ),
            ListTile(
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomNavigationBarPage(),
                    ));
              }),
              leading: image(image: imgHome, color: colorText, h: 35, w: 35),
              title: text(text: txtHome, color: colorText, fontsize: 16),
            ),
            ListTile(
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MemberList(),
                    ));
              }),
              leading: image(image: imgMember, color: colorText, h: 35, w: 35),
              title: text(text: txtAllMember, color: colorText, fontsize: 16),
            ),
            ListTile(
              leading: image(image: imgVehicle, color: colorText, h: 35, w: 35),
              title: text(text: txtAllVehicle, color: colorText, fontsize: 16),
            ),
            ListTile(
              leading:
                  image(image: imgSettings, color: colorText, h: 35, w: 35),
              title: text(text: txtSettings, color: colorText, fontsize: 16),
            ),
            ListTile(
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Registration(),
                    ));
              }),
              leading:
                  image(image: imgRegester, color: colorText, h: 35, w: 35),
              title: text(text: txtRegester, color: colorText, fontsize: 16),
            ),
            ListTile(
              leading: image(image: imgAboutUs, color: colorText, h: 35, w: 35),
              title: text(text: txtAboutUs, color: colorText, fontsize: 16),
            ),
            const Spacer(),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white54,
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 16.0,
                ),
                child: const Text('Terms of Service | Privacy Policy'),
              ),
            ),
          ],
        ),
      ),
      child: Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: GNav(
            backgroundColor: colorGradiant1,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            rippleColor: Colors.grey,
            hoverColor: Colors.grey,
            haptic: true, // haptic feedback
            tabBorderRadius: 20,
            tabActiveBorder:
                Border.all(color: Colors.black, width: 1), // tab button border
            tabBorder: Border.all(color: Colors.black, width: 1),
            tabShadow: [
              BoxShadow(color: Colors.white.withOpacity(1))
            ], // tab button shadow
            curve: Curves.easeOutExpo,
            duration:
                const Duration(milliseconds: 10), // tab animation duration
            gap: 8,
            color: Colors.grey.shade800, // unselected icon color
            activeColor: Colors.white, // selected icon and text color
            iconSize: 24,
            tabBackgroundColor: HexColor('4963dc'),
            padding: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 15), // navigation bar padding
            onTabChange: onTappedBar,
            selectedIndex: _currentIndex,
            tabs: [
              GButton(
                icon: icHome,
                text: txtHome,
              ),
              GButton(icon: icMember, text: txtAllMember),
              GButton(icon: icNotice, text: txtNotice),
              GButton(
                icon: icRegistration,
                text: txtRegester,
              ),
            ]),
      ),
    );
  }
}
