import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:greencity/common/buttons.dart';
import 'package:greencity/common/text.dart';
import 'package:greencity/screens/notice_add/notice_widget.dart';
import 'package:greencity/utils/colors.dart';
import 'package:greencity/utils/icons.dart';
import 'package:greencity/utils/images.dart';
import 'package:greencity/utils/strings.dart';

class NoticeAdd extends StatefulWidget {
  const NoticeAdd({super.key});

  @override
  State<NoticeAdd> createState() => _NoticeAddState();
}

List<Map> noticeData = [
  {'notice': controllerNotice.text}
];

TextEditingController controllerNotice = TextEditingController();
DateTime dateNotice = DateTime.now();
TimeOfDay timeNotice = TimeOfDay.now();

class _NoticeAddState extends State<NoticeAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorGradiant1,
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: const Image(
          image: AssetImage(imgAppbar),
          fit: BoxFit.cover,
        ),
        elevation: 2,
        title: text(color: Colors.white, text: txtaddnotice, fontsize: 24),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.99,
        child: SingleChildScrollView(
            child: Column(
          children: [
            noticeContainer(
              marginLeft: 20,
              marginRight: 20,
              marginBottom: 15,
              marginTop: 15,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  iconbutton(
                    icon: iccalander,
                    onPressed: () async {
                      DateTime? newDate = await showDatePicker(
                          context: context,
                          initialDate: dateNotice,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2101));
                      if (newDate == null) return;
                      setState(() {
                        dateNotice = newDate;
                      });
                    },
                  ),
                  Text(
                      '${dateNotice.day}/${dateNotice.month}/${dateNotice.year}'),
                ],
              ),
              MediaQuery.of(context).size.height / 15.5,
              MediaQuery.of(context).size.width / 1.12,
            ),
            noticeContainer(
              marginLeft: 20,
              marginRight: 20,
              marginBottom: 15,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  iconbutton(
                    icon: ictime,
                    onPressed: () async {
                      TimeOfDay? newtime = await showTimePicker(
                        context: context,
                        initialTime: timeNotice,
                      );
                      if (newtime == null) return;
                      setState(() {
                        timeNotice = newtime;
                      });
                    },
                  ),
                  Text('${timeNotice.hour}:${timeNotice.minute}'),
                ],
              ),
              MediaQuery.of(context).size.height / 15.5,
              MediaQuery.of(context).size.width / 1.12,
            ),
            Padding(
                padding: const EdgeInsets.all(9.0),
                child: noticeContainer(
                    textFieldNotice(
                        controller: controllerNotice,
                        w: MediaQuery.of(context).size.width / 1.12,
                        hintText: txtwritenotice),
                    MediaQuery.of(context).size.height / 2.30,
                    MediaQuery.of(context).size.width / 1.12)),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            animatedButton(
              h: MediaQuery.of(context).size.height / 14,
              w: MediaQuery.of(context).size.width / 1.12,
              text: txtSubmit,
              isReverse: true,
              selectedTextColor: Colors.black,
              transitionType: TransitionType.CENTER_ROUNDER,
              fontcolor: Colors.white,
              fontsize: 16,
              backgroundColor: colorSelected,
              borderColor: Colors.white,
              borderRadius: 50,
              borderWidth: 2,
              onPress: () {},
            )
          ],
        )),
      ),
    );
  }
}
