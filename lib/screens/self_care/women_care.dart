import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:greencity/common/buttons.dart';
import 'package:greencity/common/textStyle.dart';
import 'package:greencity/common/textfields.dart';
import 'package:greencity/utils/colors.dart';
import 'package:greencity/utils/images.dart';
import 'package:greencity/utils/strings.dart';
import '../../common/text.dart';

class WomenCare extends StatefulWidget {
  const WomenCare({super.key});

  @override
  State<WomenCare> createState() => _WomenCareState();
}

class _WomenCareState extends State<WomenCare> {
  TextEditingController controllerWomenHospitalName = TextEditingController();
  TextEditingController controllerWomenDoctorName = TextEditingController();
  TextEditingController controllerWomenTime = TextEditingController();
  TextEditingController controllerWomenMobile = TextEditingController();
  TextEditingController controllerWomenAddress = TextEditingController();

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
        title: text(color: Colors.white, text: txtwomancare, fontsize: 24),
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
                          controller: controllerWomenHospitalName,
                          hintText: txtenterhospitalname,
                          color: textfieldgrey),
                    ),
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
                          controller: controllerWomenDoctorName,
                          hintText: txtenterdoctorname,
                          color: textfieldgrey),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
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
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.83,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: textFields(
                          controller: controllerWomenTime,
                          hintText: txtentertime,
                          color: textfieldgrey),
                    ),
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
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.83,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: textFields(
                          keyboardType: TextInputType.number,
                          controller: controllerWomenMobile,
                          hintText: txtentermobileno,
                          color: textfieldgrey),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
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
                          controller: controllerWomenAddress,
                          maxLines: 4,
                          hintText: txtenteraddress,
                          color: textfieldgrey),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
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
