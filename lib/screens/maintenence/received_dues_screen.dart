import 'package:flutter/material.dart';
import 'package:greencity/common/image.dart';
import 'package:greencity/common/text.dart';
import 'package:greencity/network/data/data.dart';
import 'package:greencity/screens/maintenence/maintenence_widgets.dart';
import 'package:greencity/utils/colors.dart';
import 'package:greencity/utils/images.dart';
import 'package:greencity/utils/strings.dart';

class ReceivedDues extends StatefulWidget {
  const ReceivedDues({super.key});

  @override
  State<ReceivedDues> createState() => _ReceivedDuesState();
}

class _ReceivedDuesState extends State<ReceivedDues> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          gradiantMaintenenceContainer(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width / 1.02,
            color1: Colors.indigo.shade400,
            color2: Colors.indigo.shade600,
            child: Column(
              children: [
                Row(
                  children: [
                    text(
                        text: txtTotalReceivedDues,
                        color: Colors.white,
                        fontsize: 21,
                        fontWeight: FontWeight.w500),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 60,
                ),
                Row(
                  children: [
                    image(image: imgRupee, color: colorText, h: 20, w: 20),
                    text(
                        text: txtRupees,
                        color: Colors.white70,
                        fontsize: 20,
                        fontWeight: FontWeight.w300),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage(maintenence[index]['image']),
                      ),
                      trailing: text(
                          text: maintenence[index]['rupees'],
                          fontsize: 18,
                          color: Colors.green,
                          fontWeight: FontWeight.w700),
                      title: text(
                          text: maintenence[index]['name'],
                          fontWeight: FontWeight.w600),
                      subtitle: text(text: maintenence[index]['msg']));
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    thickness: 1,
                    endIndent: 10,
                    indent: 10,
                  );
                },
                itemCount: maintenence.length),
          ),
        ],
      ),
    );
  }
}
