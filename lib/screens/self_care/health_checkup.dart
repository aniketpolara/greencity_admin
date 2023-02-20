import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:greencity/common/buttons.dart';
import 'package:greencity/common/textStyle.dart';
import 'package:greencity/common/textfields.dart';
import 'package:greencity/utils/colors.dart';
import 'package:greencity/utils/images.dart';
import 'package:greencity/utils/strings.dart';
import '../../common/text.dart';
import '../clean_my_home/services_common.dart';

class HealthCheckUp extends StatefulWidget {
  const HealthCheckUp({super.key});

  @override
  State<HealthCheckUp> createState() => _HealthCheckUpState();
}

class _HealthCheckUpState extends State<HealthCheckUp> {
  TextEditingController controllerHospitalName = TextEditingController();
  TextEditingController controllerDoctorName = TextEditingController();
  TextEditingController controllerMobilenumber = TextEditingController();
  TextEditingController controllerHealthaddress = TextEditingController();
  bool monday = false;
  bool tuesday = false;
  bool wednesday = false;
  bool thursday = false;
  bool friday = false;
  bool saturday = false;
  bool sunday = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   resizeToAvoidBottomInset: false,
      backgroundColor: colorGradiant1,
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: const Image(
          image: AssetImage(imgAppbar),
          fit: BoxFit.cover,
        ),
        elevation: 2,
        title: text(color: Colors.white, text: txthealth, fontsize: 24),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                    //name
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 18,
                        ),
                        Text(
                          txthospitalname,
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
                          controller: controllerHospitalName,
                          hintText: txtenterhospitalname,
                          color: textfieldgrey),
                    ),
                    //name
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 18,
                        ),
                        Text(
                          txtdoctorname,
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
                          controller: controllerDoctorName,
                          hintText: txtenterdoctorname,
                          color: textfieldgrey),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    //mobile number
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
                          controller: controllerMobilenumber,
                          hintText: txtentermobileno,
                          color: textfieldgrey),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    //  address
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 18,
                        ),
                        Text(
                          txtaddress,
                          style: textstyle(black, 18, FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.83,
                      child: textFields(
                          controller: controllerHealthaddress,
                          maxLines: 4,
                          hintText: txtenteraddress,
                          color: textfieldgrey),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    //    time
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
