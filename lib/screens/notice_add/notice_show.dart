import 'package:flutter/material.dart';
import 'package:greencity/common/containers.dart';
import 'package:greencity/common/text.dart';
import 'package:greencity/screens/notice_add/notice_add.dart';
import 'package:greencity/utils/colors.dart';
import 'package:greencity/utils/images.dart';
import 'package:greencity/utils/strings.dart';

class ShowNoticeScreen extends StatefulWidget {
  const ShowNoticeScreen({super.key});

  @override
  State<ShowNoticeScreen> createState() => _ShowNoticeScreenState();
}

class _ShowNoticeScreenState extends State<ShowNoticeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: colorGradiant1,
      floatingActionButton: FloatingActionButton(
          backgroundColor: colorSelected,
          child: const Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).push(createRoute());
          }),
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: const Image(
          image: AssetImage(imgAppbar),
          fit: BoxFit.cover,
          height: 500,
        ),
        elevation: 2,
        title: text(color: Colors.white, text: txtNotice, fontsize: 24),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 8),
        height: screenHeight / 1.10,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return membercontainer(
              marginleft: screenWidth / 20,
              marginright: screenWidth / 20,
              marginbottom: screenHeight / 50,
              margintop: screenHeight / 50,
              w: screenWidth / 1.1,
              radiusBottomLeft: 30,
              radiusBottomRight: 30,
              radiusTopLeft: 30,
              radiusTopRight: 30,
              blurRadius: 5,
              radiusColor: Colors.black12,
              spreadRadius: 0.2,
              //  h: MediaQuery.of(context).size.height / 3,
              color: white,
              child: Column(
                children: [
                  membercontainer(
                    radiusTopLeft: 30,
                    radiusTopRight: 30,
                    color: colorSelected,
                    h: screenHeight / 16,
                    paddingLeft: 15,
                    paddingRight: 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        text(
                            text: '28 August 2022',
                            color: white,
                            fontsize: 15,
                            fontWeight: FontWeight.w500),
                        text(
                            text: '10:00 pm',
                            color: white,
                            fontsize: 15,
                            fontWeight: FontWeight.w500),
                      ],
                    ),
                  ),
                  membercontainer(
                    marginbottom: 10,
                    marginleft: 15,
                    marginright: 15,
                    margintop: 10,
                    child: text(
                        fontWeight: FontWeight.w400,
                        fontsize: 15,
                        text:
                            'As there is a meeting in the society today, all the members of the society are requested to be present in the society club house.'),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

Route createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const NoticeAdd(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(3, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
