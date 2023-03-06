import 'package:flutter/material.dart';
import 'package:greencity/common/containers.dart';
import 'package:greencity/common/text.dart';
import 'package:greencity/common/textfields.dart';
import 'package:greencity/screens/registration_page/registration_widget.dart';
import 'package:greencity/screens/vehicle/vehicle_bottomshot.dart';
import 'package:greencity/screens/vehicle/vehicle_widgets.dart';
import 'package:greencity/utils/colors.dart';
import 'package:greencity/utils/images.dart';
import 'package:greencity/utils/strings.dart';

class VehicleXcreen extends StatefulWidget {
  const VehicleXcreen({super.key});

  @override
  State<VehicleXcreen> createState() => _VehicleXcreenState();
}

class _VehicleXcreenState extends State<VehicleXcreen> {
  void clearText() {
    txtSearchController.clear();
  }

  TextEditingController txtSearchController = TextEditingController();
  bool c1 = false;
  bool c2 = false;
  bool c3 = false;
  bool c4 = false;
  bool c5 = false;
  bool c6 = false;
  Color color1 = Colors.white;
  Color color2 = Colors.white;
  Color color3 = Colors.transparent;
  Color color4 = Colors.transparent;
  Color color5 = Colors.transparent;
  Color color6 = Colors.transparent;

  bool showContainer = false;

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
        title: text(color: Colors.white, text: 'Vehicle', fontsize: 24),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.798,
        child: SingleChildScrollView(
          child: Column(
            children: [
              membercontainer(
                h: MediaQuery.of(context).size.height / 3.5,
                w: MediaQuery.of(context).size.width / 1.1,
                marginbottom: 10,
                margintop: 20,
                paddingLeft: 12,
                marginright: 1,
                paddingRight: 12,
                paddingtop: 8,
                color: colorWingContainer,
                radiusBottomLeft: 12,
                radiusBottomRight: 12,
                radiusTopLeft: 12,
                radiusTopRight: 12,
                spreadRadius: 0.1,
                blurRadius: 12,
                radiusColor: colorRadius,
                child: Column(
                  children: [
                    Row(
                      children: [
                        text(
                            fontWeight: FontWeight.bold,
                            color: colorWingname,
                            text: txtWing,
                            fontsize: 18),
                        GestureDetector(
                          onTap: () {
                            c1 = !c1;
                            c6 = c1 ? false : c6;
                            setState(() {});
                          },
                          child: wingNameContainer(
                              color: c1 ? colorSelected : colorUnselected,
                              child: text(
                                  text: txtWingA,
                                  color:
                                      c1 ? colorWingContainer : colorWingname,
                                  fontsize: 16),
                              h: MediaQuery.of(context).size.height / 24,
                              w: MediaQuery.of(context).size.width / 7,
                              borderColor:
                                  c1 ? colorWingContainer : colorWingname),
                        ),
                        GestureDetector(
                          onTap: () {
                            c2 = !c2;
                            c6 = c2 ? false : c6;
                            setState(() {});
                          },
                          child: wingNameContainer(
                              color: c2 ? colorSelected : colorUnselected,
                              child: text(
                                  text: txtWingB,
                                  color:
                                      c2 ? colorWingContainer : colorWingname,
                                  fontsize: 16),
                              h: MediaQuery.of(context).size.height / 24,
                              w: MediaQuery.of(context).size.width / 7,
                              borderColor:
                                  c2 ? colorWingContainer : colorWingname),
                        ),
                        GestureDetector(
                          onTap: () {
                            c3 = !c3;
                            c6 = c3 ? false : c6;
                            setState(() {});
                          },
                          child: wingNameContainer(
                              color: c3 ? colorSelected : colorUnselected,
                              child: text(
                                  text: txtWingC,
                                  color:
                                      c3 ? colorWingContainer : colorWingname,
                                  fontsize: 16),
                              h: MediaQuery.of(context).size.height / 24,
                              w: MediaQuery.of(context).size.width / 7,
                              borderColor:
                                  c3 ? colorWingContainer : colorWingname),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 45,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              c4 = !c4;
                              c6 = c4 ? false : c6;
                            });
                          },
                          child: wingNameContainer(
                              color: c4 ? colorSelected : colorUnselected,
                              child: text(
                                  text: txtWingD,
                                  color:
                                      c4 ? colorWingContainer : colorWingname,
                                  fontsize: 16),
                              h: MediaQuery.of(context).size.height / 24,
                              w: MediaQuery.of(context).size.width / 7,
                              borderColor:
                                  c4 ? colorWingContainer : colorWingname),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              c5 = !c5;
                              c6 = c5 ? false : c6;
                            });
                          },
                          child: wingNameContainer(
                              color: c5 ? colorSelected : colorUnselected,
                              child: text(
                                  text: txtWingE,
                                  color:
                                      c5 ? colorWingContainer : colorWingname,
                                  fontsize: 16),
                              h: MediaQuery.of(context).size.height / 24,
                              w: MediaQuery.of(context).size.width / 7,
                              borderColor:
                                  c5 ? colorWingContainer : colorWingname),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              c6 = !c6;
                              c1 = c6 ? false : c1;
                              c2 = c6 ? false : c2;
                              c3 = c6 ? false : c3;
                              c4 = c6 ? false : c4;
                              c5 = c6 ? false : c5;
                            });
                          },
                          child: wingNameContainer(
                              color: c6 ? colorSelected : colorUnselected,
                              child: text(
                                  text: txtWingAll,
                                  color:
                                      c6 ? colorWingContainer : colorWingname,
                                  fontsize: 16),
                              h: MediaQuery.of(context).size.height / 24,
                              w: MediaQuery.of(context).size.width / 7,
                              borderColor:
                                  c6 ? colorWingContainer : colorWingname),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    textFields(
                        controller: txtSearchController,
                        w: MediaQuery.of(context).size.width / 1.12,
                        hintText: 'search',
                        color: colorGradiant1),
                    Row(
                      children: [
                        textButton(
                            onPressed: () {
                              setState(() {
                                clearText();
                              });
                            },
                            child: text(text: txtClearSearch))
                      ],
                    )
                  ],
                ),
              ),
              ListTile(
                leading: membercontainer(
                  h: MediaQuery.of(context).size.height / 22,
                  w: MediaQuery.of(context).size.width / 5,
                  color: colorSelected,
                  radiusBottomLeft: 15,
                  radiusBottomRight: 15,
                  radiusTopLeft: 15,
                  radiusTopRight: 15,
                  paddingtop: 9,
                  paddingLeft: 18,
                  child: text(
                      text: 'A-103',
                      color: colorUnselected,
                      fontWeight: FontWeight.w600),
                ),
                title: membercontainer(
                  h: MediaQuery.of(context).size.height / 22,
                  borderColor: colorSelected,
                  radiusBottomLeft: 20,
                  radiusBottomRight: 20,
                  radiusTopLeft: 20,
                  radiusTopRight: 20,
                  paddingtop: 7,
                  paddingLeft: 10,
                  child: text(
                      text: 'Bhakti Talaviya', fontWeight: FontWeight.w600),
                ),
                onTap: () {
                  showContainer == true
                      ? showContainer = false
                      : showContainer = true;
                  setState(() {});
                },
              ),
              showContainer == true
                  ? membercontainer(
                      h: MediaQuery.of(context).size.height / 5.5,
                      w: MediaQuery.of(context).size.width / 1.1,
                      radiusBottomRight: 12,
                      radiusTopLeft: 12,
                      paddingLeft: 10,
                      paddingRight: 10,
                      radiusBottomLeft: 12,
                      marginbottom: 10,
                      radiusTopRight: 12,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(children: [
                            membercontainer(
                              h: 20,
                              w: 20,
                              child: const Image(
                                image: AssetImage(imgPerson),
                              ),
                            ),
                            membercontainer(
                                paddingLeft: 10,
                                child: const Text('Bhakti talaviya'))
                          ]),
                          Row(
                            children: [
                              membercontainer(
                                h: 20,
                                w: 20,
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    imgBike,
                                  ),
                                ),
                              ),
                              membercontainer(
                                  paddingLeft: 10, child: text(text: txtFormat))
                            ],
                          ),
                          Row(
                            children: [
                              membercontainer(
                                h: 20,
                                w: 20,
                                child: Image(
                                  image: AssetImage(imgCar),
                                ),
                              ),
                              membercontainer(
                                  paddingLeft: 10,
                                  child: text(
                                    text: txtFormat,
                                  ))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: (() {
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: text(text: 'For delete'),
                                      content:
                                          text(text: 'Are you sure to Delete?'),
                                      actions: [
                                        textButton(
                                            onPressed: (() {}),
                                            child: text(text: txtOk)),
                                        textButton(
                                            onPressed: (() {}),
                                            child: text(text: txtCancel))
                                      ],
                                    ),
                                  );
                                }),
                                child: membercontainer(
                                  h: 20,
                                  w: 20,
                                  child: const Image(
                                    image: AssetImage(imgDelete),
                                    height: 20,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                  child: text(
                                      text: txtUpdate,
                                      color: colorSelected,
                                      fontWeight: FontWeight.bold),
                                  onTap: () {
                                    showModalBottomSheet(
                                      // backgroundColor: colorBottomSheet,
                                      context: context,
                                      isScrollControlled: true,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(200),
                                          right: Radius.circular(200),
                                        ),
                                      ),
                                      builder: (context) =>
                                          const VehicleBottomsheet(),
                                    );
                                  })
                            ],
                          )
                        ],
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
