import 'package:flutter/material.dart';
import 'package:greencity/common/containers.dart';
import 'package:greencity/common/text.dart';
import 'package:greencity/network/data/data.dart';
import 'package:greencity/utils/colors.dart';
import 'package:greencity/utils/images.dart';
import 'package:greencity/utils/strings.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<StatefulWidget> createState() => NotificationPageState();
}

class NotificationPageState extends State<NotificationPage> {
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
        title: text(
            color: Colors.white, text: txtNotificationAppbar, fontsize: 24),
      ),
      body: membercontainer(
          h: MediaQuery.of(context).size.height / 1,
          w: MediaQuery.of(context).size.width / 1.1,
          marginbottom: 20,
          margintop: 20,
          marginleft: 20,
          marginright: 20,
          radiusBottomLeft: 12,
          radiusBottomRight: 12,
          radiusTopLeft: 12,
          radiusTopRight: 12,
          spreadRadius: 0.1,
          blurRadius: 12,
          radiusColor: colorRadius,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return const Divider(
                  indent: 15, endIndent: 20, color: Colors.black26);
            },
            itemCount: notification.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: membercontainer(
                  h: MediaQuery.of(context).size.height / 5,
                  w: MediaQuery.of(context).size.width / 6,
                  borderColor: Colors.black,
                  radiusBottomLeft: 10,
                  radiusBottomRight: 10,
                  radiusTopLeft: 10,
                  color: colorGradiant1,
                  radiusTopRight: 10,
                  child: Column(
                    children: [
                      membercontainer(
                        h: MediaQuery.of(context).size.height / 40,
                        w: MediaQuery.of(context).size.width / 6,
                        radiusTopLeft: 10,
                        radiusTopRight: 10,
                        color: colorSelected,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            text(
                                fontsize: 18,
                                text: txtLine,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            text(
                                fontsize: 18,
                                text: txtLine,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)
                          ],
                        ),
                      ),
                      text(
                          text: notification[index]['date'],
                          fontsize: 18,
                          fontWeight: FontWeight.bold),
                      text(text: notification[index]['year'], fontsize: 12)
                    ],
                  ),
                ),
                title: text(
                    text: notification[index]['title'],
                    color: black,
                    fontWeight: FontWeight.w500),
                subtitle: text(
                  text: notification[index]['subtitle'],
                ),
              );
            },
          )),
    );
  }
}
