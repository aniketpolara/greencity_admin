import 'package:flutter/material.dart';
import 'package:greencity/common/containers.dart';
import 'package:greencity/common/text.dart';
import 'package:greencity/utils/colors.dart';
import 'package:greencity/utils/images.dart';
import 'package:greencity/utils/strings.dart';

class Complain extends StatefulWidget {
  const Complain({super.key});

  @override
  State<Complain> createState() => _ComplainState();
}

class _ComplainState extends State<Complain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: const Image(
          image: AssetImage(imgAppbar),
          fit: BoxFit.cover,
        ),
        elevation: 2,
        title: text(color: Colors.white, text: txtComplain, fontsize: 24),
      ),
      body: ListView(
        children: [
          membercontainer(
              margintop: 10,
              paddingBottpm: 10,
              paddingLeft: 10,
              paddingRight: 10,
              marginleft: 10,
              marginright: 10,
              radiusBottomLeft: 10,
              radiusBottomRight: 10,
              radiusTopLeft: 10,
              radiusTopRight: 10,
              h: MediaQuery.of(context).size.height / 4,
              w: MediaQuery.of(context).size.width / 1,
              color: colorSelected,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      text(
                          text: 'Aniket Polara',
                          fontsize: 18,
                          color: colorUnselected),
                      text(text: 'A-103', fontsize: 18, color: colorUnselected),
                    ],
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  membercontainer(
                      color: colorUnselected,
                      //h: 120, w: 320,
                      radiusBottomLeft: 10,
                      paddingBottpm: 10,
                      paddingRight: 10,
                      paddingLeft: 10,
                      paddingtop: 10,
                      radiusBottomRight: 10,
                      radiusTopLeft: 10,
                      radiusTopRight: 10,
                      h: MediaQuery.of(context).size.height / 6,
                      w: MediaQuery.of(context).size.width / 1.12,
                      child: text(
                          text: 'tamari service sari nthi ',
                          fontsize: 16,
                          color: black)),
                ],
              ))
        ],
      ),
    );
  }
}
