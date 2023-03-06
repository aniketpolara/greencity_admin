import 'package:custom_date_range_picker/custom_date_range_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:greencity/common/buttons.dart';
import 'package:greencity/common/textStyle.dart';
import 'package:greencity/common/textfields.dart';
import 'package:greencity/utils/icons.dart';
import 'package:greencity/utils/strings.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import '../../utils/colors.dart';

class AddMentenence extends StatefulWidget {
  const AddMentenence({super.key});

  @override
  State<AddMentenence> createState() => _AddMentenenceState();
}

class _AddMentenenceState extends State<AddMentenence> {
  TextEditingController controllerMaintenenceMoney = TextEditingController();
  TextEditingController controllerMaintenenceDate = TextEditingController();
  TextEditingController controllerMaintenenceDateRange =
      TextEditingController();

  DateTime dateMaintenence = DateTime.now();
  DateTime dateMaintenenceRange = DateTime.now();
//TimeOfDay timeNotice = TimeOfDay.now();
//range picker
  DateTime? startDate;
  DateTime? endDate;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: colorGradiant1,
      body: Column(
        children: [
          Container(
            height: 200,
            margin: EdgeInsets.only(top: 30),
            width: 300,
            //  color: Colors.white,
            child: Lottie.asset('assets/lotties/maintenence.json'),
          ),
          SizedBox(
            height: screenHeight / 25,
          ),
          Container(
            height: screenHeight / 3,
            width: screenWidth / 1.2,
            color: Colors.transparent,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 35,
                          ),
                          Text(
                            txtMaintenencePeroid,
                            style: textstyle(black, 18, FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: IconButton(
                              onPressed: () {
                                showCustomDateRangePicker(
                                  backgroundColor: colorSelected,
                                  context,
                                  dismissible: true,
                                  minimumDate: DateTime.now(),
                                  maximumDate: DateTime.now()
                                      .add(const Duration(days: 30)),
                                  endDate: endDate,
                                  startDate: startDate,
                                  onApplyClick: (start, end) {
                                    setState(() {
                                      endDate = end;
                                      startDate = start;
                                      controllerMaintenenceDateRange.text =
                                          '${startDate != null ? DateFormat("d/M/y").format(startDate!) : '-'}  To  ${endDate != null ? DateFormat("d/M/y").format(endDate!) : '-'}';
                                    });
                                  },
                                  onCancelClick: () {
                                    setState(() {
                                      endDate = null;
                                      startDate = null;
                                    });
                                  },
                                );
                              },
                              icon: Icon(iccalander)),
                          hintText: txtDate,
                          filled: true,
                          fillColor: textfieldgrey,
                          contentPadding:
                              const EdgeInsets.fromLTRB(20.0, -0.1, 20.0, 0.1),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                          ),
                        ),
                        controller: controllerMaintenenceDateRange,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 35,
                          ),
                          Text(
                            txtLastDate,
                            style: textstyle(black, 18, FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: IconButton(
                              onPressed: () async {
                                DateTime? newDate = await showDatePicker(
                                    context: context,
                                    initialDate: dateMaintenence,
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2101));
                                if (newDate == null) return;
                                setState(
                                  () {
                                    String date =
                                        DateFormat.yMd().format(newDate);
                                    controllerMaintenenceDate.text = date;
                                  },
                                );
                              },
                              icon: Icon(iccalander)),
                          hintText: txtDate,
                          filled: true,
                          fillColor: textfieldgrey,
                          contentPadding:
                              const EdgeInsets.fromLTRB(20.0, -0.1, 20.0, 0.1),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                          ),
                        ),
                        controller: controllerMaintenenceDate,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 35,
                          ),
                          Text(
                            txtPayments,
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
                            controller: controllerMaintenenceMoney,
                            hintText: txtHintPay,
                            color: textfieldgrey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              ),
            ],
          )
        ],
      ),
    );
  }
}
