import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:greencity/common/buttons.dart';
import 'package:greencity/common/containers.dart';
import 'package:greencity/common/dropdown.dart';
import 'package:greencity/common/text.dart';
import 'package:greencity/common/textfields.dart';
import 'package:greencity/screens/registration_page/registration_widget.dart';
import 'package:greencity/utils/colors.dart';
import 'package:greencity/utils/strings.dart';

class VehicleBottomsheet extends StatefulWidget {
  const VehicleBottomsheet({super.key});

  @override
  State<VehicleBottomsheet> createState() => _VehicleBottomsheetState();
}

class _VehicleBottomsheetState extends State<VehicleBottomsheet> {
  String? wingName;
  String? flatNumber;
  TextEditingController txtSearchController = TextEditingController();
  TextEditingController txtTwoWheelController = TextEditingController();
  TextEditingController txtFourWheelController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: membercontainer(
          h: MediaQuery.of(context).size.height / 1,
          radiusTopLeft: 50,
          radiusTopRight: 50,
          paddingtop: 70,
          paddingLeft: 20,
          paddingRight: 20,
          color: colorBottomSheet,
          child: Column(
            children: [
              text(
                  text: txtVehicleUpdateText,
                  fontWeight: FontWeight.w500,
                  fontsize: 30,
                  color: colorupdatememberdetails),
              Divider(
                color: colorDivider,
                thickness: 1,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 25,
                  ),
                  text(
                      fontsize: 18,
                      text: txtselect,
                      fontWeight: FontWeight.bold),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 90,
              ),
              StatefulBuilder(
                  builder: (context, setState) => textfieldContainer(
                        h: MediaQuery.of(context).size.height / 16.5,
                        w: MediaQuery.of(context).size.width / 1,
                        DropdownButtonHideUnderline(
                          child: dropdownButton(
                            hinttext: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(txtselectwing),
                            ),
                            value: wingName,
                            items: [
                              const DropdownMenuItem(
                                  value: 'a', child: Center(child: Text(txta))),
                              const DropdownMenuItem(
                                  value: 'b', child: Center(child: Text(txtb))),
                              const DropdownMenuItem(
                                  value: 'c', child: Center(child: Text(txtc))),
                              const DropdownMenuItem(
                                  value: 'd', child: Center(child: Text(txtd))),
                              const DropdownMenuItem(
                                  value: 'e', child: Center(child: Text(txte))),
                            ],
                            onChanged: (val) {
                              setState(() {
                                wingName = val;
                              });
                            },
                          ),
                        ),
                      )),
              const SizedBox(
                height: 8,
              ),
              StatefulBuilder(
                  builder: (context, setState) => textfieldContainer(
                        h: MediaQuery.of(context).size.height / 16.5,
                        w: MediaQuery.of(context).size.width / 1,
                        DropdownButtonHideUnderline(
                          child: dropdownButton(
                            hinttext: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(txtselectnum),
                            ),
                            value: flatNumber,
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
                                flatNumber = val;
                              });
                            },
                          ),
                        ),
                      )),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 25,
                  ),
                  text(
                      fontsize: 18,
                      text: txtVehicleType,
                      fontWeight: FontWeight.bold),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 90,
              ),
              textFields(
                  controller: txtTwoWheelController,
                  w: MediaQuery.of(context).size.width / 1.12,
                  hintText: txtVehicleType),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 25,
                  ),
                  text(
                      fontsize: 18,
                      text: txtVehicleNumber,
                      fontWeight: FontWeight.bold),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 90,
              ),
              textFields(
                  w: MediaQuery.of(context).size.width / 1.12,
                  controller: txtFourWheelController,
                  hintText: txtVehicleType),
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
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
    );
  }
}
