import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:greencity/common/buttons.dart';
import 'package:greencity/common/containers.dart';
import 'package:greencity/common/dropdown.dart';
import 'package:greencity/common/text.dart';
import 'package:greencity/common/textStyle.dart';
import 'package:greencity/common/textfields.dart';
import 'package:greencity/screens/registration_page/registration_widget.dart';
import 'package:greencity/utils/colors.dart';
import 'package:greencity/utils/images.dart';
import 'package:greencity/utils/strings.dart';
import 'package:hexcolor/hexcolor.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration>
    with TickerProviderStateMixin {
  TabController? tabController;
  TextEditingController controllerUserName = TextEditingController();
  TextEditingController controllerNum = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerVehicleNumber = TextEditingController();
  //TextEditingController email = TextEditingController();
  bool twoWheelar = false;
  bool fourWheelar = false;
  String? wing;
  String? number;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

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
                          text: txtMember,
                          fontWeight: FontWeight.w600,
                          fontsize: 18),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      text(
                          text: txtVehicle,
                          fontWeight: FontWeight.w600,
                          fontsize: 18),
                      const SizedBox(
                        height: 35,
                      )
                    ],
                  )
                ]),
            preferredSize: const Size(35, 35)),
        elevation: 2,
        title: text(color: Colors.white, text: txtRegistration, fontsize: 24),
      ),
      body: Column(
        children: [
          Expanded(
              child: TabBarView(controller: tabController, children: [
            //Member Registration
            Container(
              height: MediaQuery.of(context).size.height * 0.75,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.083,
                          ),
                          Text(
                            txtname,
                            style: textstyle(black, 18, FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.0136,
                      ),
                      textFields(
                          controller: controllerUserName,
                          w: MediaQuery.of(context).size.width / 1.21,
                          hintText: 'Enter name'),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.027,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.086,
                          ),
                          Text(
                            txtselect,
                            style: textstyle(black, 18, FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.0136,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: textfieldContainer(
                            h: MediaQuery.of(context).size.height / 15.5,
                            w: MediaQuery.of(context).size.width / 1.20,
                            DropdownButtonHideUnderline(
                              child: dropdownButton(
                                hinttext: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(txtselectwing),
                                ),
                                value: wing,
                                items: [
                                  const DropdownMenuItem(
                                      value: 'a',
                                      child: Center(child: Text(txta))),
                                  const DropdownMenuItem(
                                      value: 'b',
                                      child: Center(child: Text(txtb))),
                                  const DropdownMenuItem(
                                      value: 'c',
                                      child: Center(child: Text(txtc))),
                                  const DropdownMenuItem(
                                      value: 'd',
                                      child: Center(child: Text(txtd))),
                                  const DropdownMenuItem(
                                      value: 'e',
                                      child: Center(child: Text(txte))),
                                ],
                                onChanged: (val) {
                                  setState(() {
                                    wing = val;
                                  });
                                },
                              ),
                            ),
                          )),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.0289,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: textfieldContainer(
                            h: MediaQuery.of(context).size.height / 15.5,
                            w: MediaQuery.of(context).size.width / 1.20,
                            DropdownButtonHideUnderline(
                              child: dropdownButton(
                                hinttext: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(txtselectnum),
                                ),
                                value: number,
                                items: [
                                  const DropdownMenuItem(
                                      value: '101',
                                      child: Center(child: Text(txt101))),
                                  const DropdownMenuItem(
                                      value: '102',
                                      child: Center(child: Text(txt102))),
                                  const DropdownMenuItem(
                                      value: '103',
                                      child: Center(child: Text(txt103))),
                                  const DropdownMenuItem(
                                      value: '104',
                                      child: Center(
                                          child: Center(child: Text(txt104)))),
                                  const DropdownMenuItem(
                                      value: '201',
                                      child: Center(child: Text(txt201))),
                                  const DropdownMenuItem(
                                      value: '202',
                                      child: Center(child: Text(txt202))),
                                  const DropdownMenuItem(
                                      value: '203',
                                      child: Center(child: Text(txt203))),
                                  const DropdownMenuItem(
                                      value: '204',
                                      child: Center(child: Text(txt204))),
                                  const DropdownMenuItem(
                                      value: '301',
                                      child: Center(child: Text(txt301))),
                                  const DropdownMenuItem(
                                      value: '302',
                                      child: Center(child: Text(txt302))),
                                  const DropdownMenuItem(
                                      value: '303',
                                      child: Center(child: Text(txt303))),
                                  const DropdownMenuItem(
                                      value: '304',
                                      child: Center(child: Text(txt304))),
                                  const DropdownMenuItem(
                                      value: '401',
                                      child: Center(child: Text(txt401))),
                                  const DropdownMenuItem(
                                      value: '402',
                                      child: Center(child: Text(txt402))),
                                  const DropdownMenuItem(
                                      value: '403',
                                      child: Center(child: Text(txt403))),
                                  const DropdownMenuItem(
                                      value: '404',
                                      child: Center(child: Text(txt404))),
                                  const DropdownMenuItem(
                                      value: '501',
                                      child: Center(child: Text(txt501))),
                                  const DropdownMenuItem(
                                      value: '502',
                                      child: Center(child: Text(txt502))),
                                  const DropdownMenuItem(
                                      value: '503',
                                      child: Center(child: Text(txt503))),
                                  const DropdownMenuItem(
                                      value: '504',
                                      child: Center(child: Text(txt504))),
                                ],
                                onChanged: (val) {
                                  setState(() {
                                    number = val;
                                  });
                                },
                              ),
                            ),
                          )),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.0869,
                          ),
                          Text(
                            txtnum,
                            style: textstyle(black, 18, FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.0134,
                      ),
                      textFields(
                          controller: controllerNum,
                          w: MediaQuery.of(context).size.width / 1.21,
                          hintText: 'Enter Number'),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.0253,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.0869,
                          ),
                          Text(
                            txtemail,
                            style: textstyle(black, 18, FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.0134,
                      ),
                      textFields(
                          controller: controllerEmail,
                          w: MediaQuery.of(context).size.width / 1.21,
                          hintText: 'Enter Email'),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.0547,
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
              ),
            ),
            //vehicale mate
            Container(
              height: MediaQuery.of(context).size.height * 0.75,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02739,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 10,
                        width: MediaQuery.of(context).size.width / 1,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/carimg-unscreen.gif'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02739,
                      ),
                      container(
                        h: MediaQuery.of(context).size.height * 0.450,
                        w: MediaQuery.of(context).size.width * 1,
                        color: colorGradiant1,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.0579,
                                  ),
                                  Text(
                                    txtselect,
                                    style:
                                        textstyle(black, 18, FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    0.01095,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  textfieldContainer(
                                    h: MediaQuery.of(context).size.height /
                                        16.5,
                                    w: MediaQuery.of(context).size.width / 1.20,
                                    DropdownButtonHideUnderline(
                                      child: dropdownButton(
                                        hinttext: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(txtselectwing),
                                        ),
                                        value: wing,
                                        items: [
                                          const DropdownMenuItem(
                                              value: 'a',
                                              child: Center(child: Text(txta))),
                                          const DropdownMenuItem(
                                              value: 'b',
                                              child: Center(child: Text(txtb))),
                                          const DropdownMenuItem(
                                              value: 'c',
                                              child: Center(child: Text(txtc))),
                                          const DropdownMenuItem(
                                              value: 'd',
                                              child: Center(child: Text(txtd))),
                                          const DropdownMenuItem(
                                              value: 'e',
                                              child: Center(child: Text(txte))),
                                        ],
                                        onChanged: (val) {
                                          setState(() {
                                            wing = val;
                                          });
                                        },
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                  padding: EdgeInsets.all(
                                MediaQuery.of(context).size.height * 0.010,
                              )),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  textfieldContainer(
                                    h: MediaQuery.of(context).size.height /
                                        16.5,
                                    w: MediaQuery.of(context).size.width / 1.20,
                                    DropdownButtonHideUnderline(
                                      child: dropdownButton(
                                        hinttext: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(txtselectnum),
                                        ),
                                        value: number,
                                        items: [
                                          const DropdownMenuItem(
                                              value: '101',
                                              child:
                                                  Center(child: Text(txt101))),
                                          const DropdownMenuItem(
                                              value: '102',
                                              child:
                                                  Center(child: Text(txt102))),
                                          const DropdownMenuItem(
                                              value: '103',
                                              child:
                                                  Center(child: Text(txt103))),
                                          const DropdownMenuItem(
                                              value: '104',
                                              child: Center(
                                                  child: Center(
                                                      child: Text(txt104)))),
                                          const DropdownMenuItem(
                                              value: '201',
                                              child:
                                                  Center(child: Text(txt201))),
                                          const DropdownMenuItem(
                                              value: '202',
                                              child:
                                                  Center(child: Text(txt202))),
                                          const DropdownMenuItem(
                                              value: '203',
                                              child:
                                                  Center(child: Text(txt203))),
                                          const DropdownMenuItem(
                                              value: '204',
                                              child:
                                                  Center(child: Text(txt204))),
                                          const DropdownMenuItem(
                                              value: '301',
                                              child:
                                                  Center(child: Text(txt301))),
                                          const DropdownMenuItem(
                                              value: '302',
                                              child:
                                                  Center(child: Text(txt302))),
                                          const DropdownMenuItem(
                                              value: '303',
                                              child:
                                                  Center(child: Text(txt303))),
                                          const DropdownMenuItem(
                                              value: '304',
                                              child:
                                                  Center(child: Text(txt304))),
                                          const DropdownMenuItem(
                                              value: '401',
                                              child:
                                                  Center(child: Text(txt401))),
                                          const DropdownMenuItem(
                                              value: '402',
                                              child:
                                                  Center(child: Text(txt402))),
                                          const DropdownMenuItem(
                                              value: '403',
                                              child:
                                                  Center(child: Text(txt403))),
                                          const DropdownMenuItem(
                                              value: '404',
                                              child:
                                                  Center(child: Text(txt404))),
                                          const DropdownMenuItem(
                                              value: '501',
                                              child:
                                                  Center(child: Text(txt501))),
                                          const DropdownMenuItem(
                                              value: '502',
                                              child:
                                                  Center(child: Text(txt502))),
                                          const DropdownMenuItem(
                                              value: '503',
                                              child:
                                                  Center(child: Text(txt503))),
                                          const DropdownMenuItem(
                                              value: '504',
                                              child:
                                                  Center(child: Text(txt504))),
                                        ],
                                        onChanged: (val) {
                                          setState(() {
                                            number = val;
                                          });
                                        },
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.0190,
                              ),
                              //**//
                              container(
                                h: MediaQuery.of(context).size.height * 0.225,
                                w: MediaQuery.of(context).size.width * 0.83,
                                paddingtop: 10,
                                bottemleft: 20,
                                bottemright: 20,
                                topleft: 20,
                                topright: 20,
                                color: HexColor('4963dc').withOpacity(0.9),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.0579,
                                        ),
                                        text(
                                            text: txtVehicleType,
                                            color: Colors.white,
                                            fontsize: 18,
                                            fontWeight: FontWeight.bold),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Checkbox(
                                          checkColor: colorSelected,
                                          activeColor: Colors.white,
                                          value: twoWheelar,
                                          onChanged: (value) {
                                            setState(() {
                                              twoWheelar = !twoWheelar;
                                            });
                                          },
                                        ),
                                        text(
                                            text: txtTwoWheelar,
                                            color: white,
                                            fontsize: 15),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.0289,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.010,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.0579,
                                        ),
                                        Text(
                                          txtVehicleNumber,
                                          style: textstyle(
                                            white,
                                            18,
                                            FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.0136,
                                    ),
                                    textFields(
                                        controller: controllerVehicleNumber,
                                        w: MediaQuery.of(context).size.width /
                                            1.3,
                                        hintText: txtFormat),
                                  ],
                                ),
                              ),
                              container(
                                h: MediaQuery.of(context).size.height * 0.225,
                                w: MediaQuery.of(context).size.width * 0.83,
                                paddingtop: 10,
                                bottemleft: 20,
                                bottemright: 20,
                                topleft: 20,
                                topright: 20,
                                color: HexColor('4963dc').withOpacity(0.9),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.0579,
                                        ),
                                        text(
                                            text: txtVehicleType,
                                            color: Colors.white,
                                            fontsize: 18,
                                            fontWeight: FontWeight.bold),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Checkbox(
                                          checkColor: colorSelected,
                                          activeColor: Colors.white,
                                          value: fourWheelar,
                                          onChanged: (value) {
                                            setState(() {
                                              fourWheelar = !fourWheelar;
                                            });
                                          },
                                        ),
                                        text(
                                            text: txtFourWheelar,
                                            color: white,
                                            fontsize: 15),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.0289,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.010,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.0579,
                                        ),
                                        Text(
                                          txtVehicleNumber,
                                          style: textstyle(
                                            white,
                                            18,
                                            FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.0136,
                                    ),
                                    textFields(
                                        controller: controllerVehicleNumber,
                                        w: MediaQuery.of(context).size.width /
                                            1.3,
                                        hintText: txtFormat),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015,
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
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
