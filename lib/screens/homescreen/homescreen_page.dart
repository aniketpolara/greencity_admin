import 'package:flutter/material.dart';
import 'package:greencity/common/containers.dart';
import 'package:greencity/screens/change_password/change_password.dart';
import 'package:greencity/screens/complain/complain.dart';
import 'package:greencity/screens/events/event_page.dart';
import 'package:greencity/screens/facilities/facilities.dart';
import 'package:greencity/screens/guidelines/guidelines.dart';
import 'package:greencity/screens/homescreen/homescreen_widgets.dart';
import 'package:greencity/screens/maintenence/maintenence_screen.dart';
import 'package:greencity/screens/member_page/member_screen.dart';
import 'package:greencity/screens/notice_add/notice_add.dart';
import 'package:greencity/screens/notice_add/notice_show.dart';
import 'package:greencity/screens/notification/notification.dart';
import 'package:greencity/screens/report/report_screen.dart';
import 'package:greencity/screens/vehicle/vehicle_screen.dart';
import 'package:greencity/utils/colors.dart';
import 'package:greencity/utils/images.dart';
import 'package:greencity/utils/strings.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../common/text.dart';

class HomeScreenDemo extends StatefulWidget {
  const HomeScreenDemo({super.key});

  @override
  State<HomeScreenDemo> createState() => _HomeScreenDemoState();
}

class _HomeScreenDemoState extends State<HomeScreenDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('f3f7fa'),
      body: Stack(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imgMain), fit: BoxFit.cover)),
              height: MediaQuery.of(context).size.height * 0.2),
          Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  text(
                      text: title1,
                      fontsize: 22,
                      fontWeight: FontWeight.bold,
                      color: colorText),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: containerHome(
                  h: MediaQuery.of(context).size.height * 0.37,
                  w: MediaQuery.of(context).size.width * 0.89,
                  paddingleft: 15,
                  paddingtop: 15,
                  paddingright: 15,
                  paddingbottom: 15,
                  radiusBottomLeft: 15,
                  radiusTopLeft: 15,
                  radiusBottomRight: 15,
                  radiusTopRight: 15,
                  dx: 0.5,
                  dy: 0.5,
                  shadowColor: Colors.grey,
                  spreadRadius: 0.1,
                  blurRadius: 5,
                  color: HexColor('ffffff'),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          text(
                            text: txtSociety,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontsize: 18,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          containerHome(
                            h: MediaQuery.of(context).size.height * 0.13,
                            w: MediaQuery.of(context).size.width * 0.26,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    gestureDetector(
                                        onTap: (() {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const MemberList(),
                                              ));
                                        }),
                                        h: 40,
                                        w: 40,
                                        images: imgMember),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    text(
                                      text: txtAllMember,
                                      color: gesDetector,
                                      fontWeight: FontWeight.bold,
                                      fontsize: 14,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          containerHome(
                            h: MediaQuery.of(context).size.height * 0.13,
                            w: MediaQuery.of(context).size.width * 0.26,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    gestureDetector(
                                        onTap: (() {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const VehicleXcreen(),
                                              ));
                                        }),
                                        h: 40,
                                        w: 40,
                                        images: imgVehicle),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    text(
                                      text: txtAllVehicle,
                                      color: gesDetector,
                                      fontWeight: FontWeight.bold,
                                      fontsize: 14,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          containerHome(
                            h: MediaQuery.of(context).size.height * 0.13,
                            w: MediaQuery.of(context).size.width * 0.26,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    gestureDetector(
                                        onTap: (() {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const ShowNoticeScreen(),
                                              ));
                                        }),
                                        h: 40,
                                        w: 40,
                                        images: imgNotice),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    text(
                                      text: txtNotice,
                                      color: gesDetector,
                                      fontWeight: FontWeight.bold,
                                      fontsize: 14,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          containerHome(
                            h: MediaQuery.of(context).size.height * 0.13,
                            w: MediaQuery.of(context).size.width * 0.26,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    gestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const EventScreen(),
                                              ));
                                        },
                                        h: 40,
                                        w: 40,
                                        images: imgEvent),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    text(
                                      text: txtEvents,
                                      color: gesDetector,
                                      fontWeight: FontWeight.bold,
                                      fontsize: 14,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          containerHome(
                            h: MediaQuery.of(context).size.height * 0.13,
                            w: MediaQuery.of(context).size.width * 0.26,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    gestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const Complain(),
                                              ));
                                        },
                                        h: 40,
                                        w: 40,
                                        images: imgComplaint),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    text(
                                      text: txtComplaint,
                                      color: gesDetector,
                                      fontWeight: FontWeight.bold,
                                      fontsize: 14,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          containerHome(
                            h: MediaQuery.of(context).size.height * 0.13,
                            w: MediaQuery.of(context).size.width * 0.26,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    gestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const NotificationPage()));
                                        },
                                        h: 40,
                                        w: 40,
                                        images: imgNotification),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    text(
                                      text: txtNotification,
                                      color: gesDetector,
                                      fontWeight: FontWeight.bold,
                                      fontsize: 14,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Center(
                child: containerHome(
                  h: MediaQuery.of(context).size.height * 0.37,
                  w: MediaQuery.of(context).size.width * 0.89,
                  paddingleft: 15,
                  paddingtop: 15,
                  paddingright: 15,
                  paddingbottom: 15,
                  radiusBottomLeft: 15,
                  radiusTopLeft: 15,
                  radiusBottomRight: 15,
                  radiusTopRight: 15,
                  dx: 0.5,
                  dy: 0.5,
                  shadowColor: Colors.grey,
                  spreadRadius: 0.1,
                  blurRadius: 5,
                  color: HexColor('ffffff'),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          text(
                            text: txtInformation,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontsize: 18,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          containerHome(
                            h: MediaQuery.of(context).size.height * 0.13,
                            w: MediaQuery.of(context).size.width * 0.26,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    gestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const FacilitiesPage(),
                                              ));
                                        },
                                        h: 40,
                                        w: 40,
                                        images: imgFacility),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    text(
                                      text: txtFacility,
                                      color: gesDetector,
                                      fontWeight: FontWeight.bold,
                                      fontsize: 14,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          containerHome(
                            h: MediaQuery.of(context).size.height * 0.13,
                            w: MediaQuery.of(context).size.width * 0.26,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    gestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const ReportScreen(),
                                              ));
                                        },
                                        h: 40,
                                        w: 40,
                                        images: imgReport),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    text(
                                      text: txtReport,
                                      color: gesDetector,
                                      fontWeight: FontWeight.bold,
                                      fontsize: 14,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          containerHome(
                            h: MediaQuery.of(context).size.height * 0.13,
                            w: MediaQuery.of(context).size.width * 0.26,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    gestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const MaintenenceScreen(),
                                              ));
                                        },
                                        h: 40,
                                        w: 40,
                                        images: imgMaintainance),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    text(
                                      text: txtMaintainance,
                                      color: gesDetector,
                                      fontWeight: FontWeight.bold,
                                      fontsize: 14,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          containerHome(
                            h: MediaQuery.of(context).size.height * 0.13,
                            w: MediaQuery.of(context).size.width * 0.26,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    gestureDetector(
                                        h: 40, w: 40, images: imgPayment),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    text(
                                      text: txtPayments,
                                      color: gesDetector,
                                      fontWeight: FontWeight.bold,
                                      fontsize: 14,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          containerHome(
                            h: MediaQuery.of(context).size.height * 0.13,
                            w: MediaQuery.of(context).size.width * 0.26,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    gestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const GuideLines(),
                                              ));
                                        },
                                        h: 40,
                                        w: 40,
                                        images: imgRules),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    text(
                                      text: txtRules,
                                      color: gesDetector,
                                      fontWeight: FontWeight.bold,
                                      fontsize: 14,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          containerHome(
                            h: MediaQuery.of(context).size.height * 0.15,
                            w: MediaQuery.of(context).size.width * 0.26,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    gestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const ChangePasswordPage(),
                                              ));
                                        },
                                        h: 40,
                                        w: 40,
                                        images: imgPassword),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    text(
                                      text: txtPassword,
                                      color: gesDetector,
                                      fontWeight: FontWeight.bold,
                                      fontsize: 14,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
