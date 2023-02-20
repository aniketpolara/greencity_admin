import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:greencity/common/buttons.dart';
import 'package:greencity/common/textStyle.dart';
import 'package:greencity/common/textfields.dart';
import 'package:greencity/screens/clean_my_home/services_common.dart';
import 'package:greencity/utils/strings.dart';
import '../../common/text.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';

class Electrition extends StatefulWidget {
  const Electrition({super.key});

  @override
  State<Electrition> createState() => _Electrition();
}

class _Electrition extends State<Electrition> {
  bool monday = false;
  bool tuesday = false;
  bool wednesday = false;
  bool thursday = false;
  bool friday = false;
  bool saturday = false;
  bool sunday = false;
  //textfields
  TextEditingController controllerelectritionName = TextEditingController();
  TextEditingController controllerElectritionMobileno = TextEditingController();
  TextEditingController controllerElectricianTime = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: bgcolor,
        appBar: AppBar(
          centerTitle: true,
          flexibleSpace: const Image(
            image: AssetImage(imgAppbar),
            fit: BoxFit.cover,
          ),
          elevation: 2,
          title: text(color: Colors.white, text: txtelectrition, fontsize: 24),
        ),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 4.8,
            ),
            Container(
              margin: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.height / 1.5,
              color: Colors.transparent,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 18,
                        ),
                        Text(
                          txtelectritionname,
                          style: textstyle(black, 18, FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.83,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: textFields(
                          controller: controllerelectritionName,
                          hintText: txtenterelectritionname,
                          w: MediaQuery.of(context).size.width / 2),
                    ),
                    //mobile no
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 18,
                        ),
                        Text(
                          txtmobileno,
                          style: textstyle(black, 18, FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.83,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: textFields(
                          keyboardType: TextInputType.number,
                          controller: controllerElectritionMobileno,
                          hintText: txtentermobileno,
                          color: textfieldgrey),
                    ),
                    //time
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    //time
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 18,
                        ),
                        Text(
                          txttime,
                          style: textstyle(black, 18, FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    containerServices(
                      h: MediaQuery.of(context).size.height / 2.2,
                      w: MediaQuery.of(context).size.width / 1.22,
                      child: Column(
                        children: [
                          row(
                              value: monday,
                              onChanged: (p0) {
                                setState(() {
                                  monday = !monday;
                                });
                              },
                              textDay: txtMonday,
                              textTime: '7:00 am to 12:00 pm',
                              width: 27),
                          row(
                              onChanged: (val) {
                                setState(() {
                                  tuesday = !tuesday;
                                });
                              },
                              width: 25,
                              textDay: txtTuesday,
                              textTime: '10:00 am to 5:00 pm',
                              value: tuesday),
                          row(
                              onChanged: (val) {
                                setState(() {
                                  wednesday = !wednesday;
                                });
                              },
                              width: 3,
                              textDay: txtWednesday,
                              textTime: '7:00 am to 5:00 pm',
                              value: wednesday),
                          row(
                              onChanged: (val) {
                                setState(() {
                                  thursday = !thursday;
                                });
                              },
                              width: 16,
                              textDay: txtThursday,
                              textTime: '9:00 am to 5:00 pm',
                              value: thursday),
                          row(
                              value: friday,
                              onChanged: (p0) {
                                setState(() {
                                  friday = !friday;
                                });
                              },
                              width: 38,
                              textDay: txtFriday,
                              textTime: '9:00 am to 5:00 pm'),
                          row(
                              value: saturday,
                              onChanged: (p0) {
                                setState(() {
                                  saturday = !saturday;
                                });
                              },
                              width: 20,
                              textDay: txtSaturday,
                              textTime: '9:00 am to 5:00 pm'),
                          row(
                              value: sunday,
                              onChanged: (p0) {
                                setState(() {
                                  sunday = !sunday;
                                });
                              },
                              width: 30,
                              textDay: txtSunday,
                              textTime: '9:00 am to 5:00 pm'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ],
                ),
              ),
            ),
            animatedButton(
              h: MediaQuery.of(context).size.height / 14,
              w: MediaQuery.of(context).size.width / 2,
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
        ),
      ),
    );
  }
}
