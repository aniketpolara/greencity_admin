import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:greencity/common/buttons.dart';
import 'package:greencity/common/containers.dart';
import 'package:greencity/common/textStyle.dart';
import 'package:greencity/common/textfields.dart';
import 'package:greencity/utils/colors.dart';
import 'package:greencity/utils/images.dart';
import 'package:greencity/utils/strings.dart';
import '../../common/text.dart';

class CockRoachScreen extends StatefulWidget {
  const CockRoachScreen({super.key});

  @override
  State<CockRoachScreen> createState() => _CockRoachScreenState();
}

class _CockRoachScreenState extends State<CockRoachScreen> {
  //textfields
  TextEditingController cokroachcompanyname = TextEditingController();
  TextEditingController cokroachownername = TextEditingController();
  TextEditingController cokroachmobileno = TextEditingController();
  TextEditingController cokroachcharges = TextEditingController();
  TextEditingController cokroachaddress = TextEditingController();
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
        title: text(color: Colors.white, text: txtcockroach, fontsize: 24),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Text(
                  txtcompanyname,
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
                  controller: cokroachcompanyname,
                  hintText: txtentercompanyname,
                  color: textfieldgrey),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Text(
                  txtownername,
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
                  controller: cokroachownername,
                  hintText: txtenterownername,
                  color: textfieldgrey),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
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
                  controller: cokroachmobileno,
                  hintText: txtentermobileno,
                  color: textfieldgrey),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Text(
                  txtcharges,
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
                  controller: cokroachcharges,
                  hintText: txtenterchargesamount,
                  color: textfieldgrey),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
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
                  controller: cokroachaddress,
                  maxLines: 2,
                  hintText: txtenteraddress,
                  color: textfieldgrey),
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
    );
  }
}
