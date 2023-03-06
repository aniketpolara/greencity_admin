// ignore: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:greencity/common/buttons.dart';
import 'package:greencity/common/textStyle.dart';
import 'package:greencity/common/textfields.dart';
import 'package:greencity/screens/clean_my_home/services_common.dart';
import 'package:greencity/utils/colors.dart';
import 'package:greencity/utils/images.dart';
import 'package:greencity/utils/strings.dart';
import 'package:lottie/lottie.dart';
import '../../common/text.dart';

// ignore: camel_case_types
class Plumber_Screen extends StatefulWidget {
  const Plumber_Screen({super.key});

  @override
  State<Plumber_Screen> createState() => _Plumber_ScreenState();
}

// ignore: camel_case_types
class _Plumber_ScreenState extends State<Plumber_Screen>
    with TickerProviderStateMixin {
  TextEditingController controllerPlumberName = TextEditingController();
  TextEditingController controllerPlumberMobile = TextEditingController();
  TabController? tabController;
  bool monday = false;
  bool tuesday = false;
  bool wednesday = false;
  bool thursday = false;
  bool friday = false;
  bool saturday = false;
  bool sunday = false;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: colorGradiant1,
        appBar: AppBar(
          centerTitle: true,
          flexibleSpace: const Image(
            image: AssetImage(imgAppbar),
            fit: BoxFit.cover,
          ),
          elevation: 2,
          title: text(color: Colors.white, text: txtplumber, fontsize: 24),
          bottom: PreferredSize(
              // ignore: sort_child_properties_last
              child: TabBar(
                  indicatorColor: Colors.white,
                  controller: tabController,
                  tabs: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        text(
                            text: txtAdd,
                            fontWeight: FontWeight.w600,
                            fontsize: 18),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        text(
                            text: txtShow,
                            fontWeight: FontWeight.w600,
                            fontsize: 18),
                        const SizedBox(
                          height: 35,
                        )
                      ],
                    )
                  ]),
              preferredSize: const Size(35, 35)),
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 3.8,
                        width: 250,
                        decoration: const BoxDecoration(),
                        child: Lottie.asset('assets/lotties/plumber.json'),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 2000,
                      ),
                      Container(
                        margin: const EdgeInsets.all(20),
                        height: MediaQuery.of(context).size.height / 2.25,
                        width: MediaQuery.of(context).size.height / 1.5,
                        color: Colors.transparent,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 18,
                                  ),
                                  Text(
                                    txtplumbername,
                                    style:
                                        textstyle(black, 18, FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.83,
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                child: textFields(
                                    controller: controllerPlumberName,
                                    hintText: txtenterplumbername,
                                    color: white),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 18,
                                  ),
                                  Text(
                                    txtmobileno,
                                    style:
                                        textstyle(black, 18, FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.83,
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                child: textFields(
                                    keyboardType: TextInputType.number,
                                    controller: controllerPlumberMobile,
                                    hintText: txtmobileno,
                                    color: textfieldgrey),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.015,
                              ),
                              //time
                              Row(
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 18,
                                  ),
                                  Text(
                                    txttime,
                                    style:
                                        textstyle(black, 18, FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
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
                                      width: MediaQuery.of(context).size.width *
                                          0.07714,
                                    ),
                                    row(
                                        onChanged: (val) {
                                          setState(() {
                                            tuesday = !tuesday;
                                          });
                                        },
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.07142,
                                        textDay: txtTuesday,
                                        textTime: '10:00 am to 5:00 pm',
                                        value: tuesday),
                                    row(
                                        onChanged: (val) {
                                          setState(() {
                                            wednesday = !wednesday;
                                          });
                                        },
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.008571,
                                        textDay: txtWednesday,
                                        textTime: '7:00 am to 5:00 pm',
                                        value: wednesday),
                                    row(
                                        onChanged: (val) {
                                          setState(() {
                                            thursday = !thursday;
                                          });
                                        },
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.04571,
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
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1085,
                                        textDay: txtFriday,
                                        textTime: '9:00 am to 5:00 pm'),
                                    row(
                                        value: saturday,
                                        onChanged: (p0) {
                                          setState(() {
                                            saturday = !saturday;
                                          });
                                        },
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.05714,
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
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
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
                  Container(
                    height: 750,
                    width: 350,
                    padding: EdgeInsets.all(10),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Container(
                          // height: 200,
                          width: 350,
                          padding: EdgeInsets.all(10),
                          //  color: Colors.black12,
                          margin: EdgeInsets.only(left: 15, right: 15, top: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 5,
                                  spreadRadius: 0.5,
                                  color: Colors.grey.shade300)
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text(
                                  text: txtplumbername,
                                  fontsize: 17,
                                  fontWeight: FontWeight.w400),
                              SizedBox(
                                height: 5,
                              ),
                              text(
                                  text: 'Mr.Shyam Patel',
                                  fontsize: 17,
                                  fontWeight: FontWeight.w500),
                              Divider(
                                thickness: 1,
                                // indent: 20,
                                // endIndent: 20,
                              ),
                              text(
                                  text: txtmobileno,
                                  fontsize: 17,
                                  fontWeight: FontWeight.w400),
                              SizedBox(
                                height: 5,
                              ),
                              text(
                                  text: '9904523095',
                                  fontsize: 17,
                                  fontWeight: FontWeight.w500),
                              Divider(
                                thickness: 1,
                                // indent: 20,
                                // endIndent: 20,
                              ),
                              text(
                                  text: txttime,
                                  fontsize: 17,
                                  fontWeight: FontWeight.w400),
                              SizedBox(
                                height: 5,
                              ),
                              text(
                                  text: 'Monday - 12:00 am to 05:00 pm',
                                  fontsize: 17,
                                  fontWeight: FontWeight.w500),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
