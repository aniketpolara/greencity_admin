import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:greencity/common/buttons.dart';
import 'package:greencity/common/text.dart';
import 'package:greencity/common/textfields.dart';
import 'package:greencity/utils/colors.dart';
import 'package:greencity/utils/strings.dart';

class AddReports extends StatefulWidget {
  const AddReports({super.key});

  @override
  State<AddReports> createState() => _AddReportsState();
}

class _AddReportsState extends State<AddReports> {
  TextEditingController controllerAmount = TextEditingController();
  TextEditingController controllerFacilities = TextEditingController();
  TextEditingController controllerStaffSalary = TextEditingController();
  TextEditingController controllerCelebrationCost = TextEditingController();
  TextEditingController controllerElectricityBill = TextEditingController();
  TextEditingController controllerConstructionCost = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorGradiant1,
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                text(
                    text: txtAddReport,
                    fontWeight: FontWeight.bold,
                    fontsize: 30,
                    color: colorupdatememberdetails),
              ],
            ),
            Divider(
              endIndent: 20,
              indent: 20,
              color: colorDivider,
              thickness: 1,
            ),
            //watre bill
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 12.5,
                ),
                text(
                    fontsize: 18,
                    text: txtPaniBill,
                    fontWeight: FontWeight.bold),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 90,
            ),
            textFields(
                controller: controllerAmount,
                w: MediaQuery.of(context).size.width / 1.12,
                hintText: txtPaniBill),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            //facitity charge
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 12.5,
                ),
                text(
                    fontsize: 18,
                    text: txtFaciliteCharge,
                    fontWeight: FontWeight.bold),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 90,
            ),

            textFields(
                controller: controllerFacilities,
                w: MediaQuery.of(context).size.width / 1.12,
                hintText: txtStaffSalary),

            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            //staff Salary
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 12.5,
                ),
                text(
                    fontsize: 18,
                    text: txtStaffSalary,
                    fontWeight: FontWeight.bold),
              ],
            ),
            //Celebration Cost
            SizedBox(
              height: MediaQuery.of(context).size.height / 90,
            ),
            textFields(
                controller: controllerCelebrationCost,
                w: MediaQuery.of(context).size.width / 1.12,
                hintText: txtCelebration),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            //celebration
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 12.5,
                ),
                text(
                    fontsize: 18,
                    text: txtCelebration,
                    fontWeight: FontWeight.bold),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 90,
            ),

            textFields(
                controller: controllerFacilities,
                w: MediaQuery.of(context).size.width / 1.12,
                hintText: txtFacility),

            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            //construction Cost
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 12.5,
                ),
                text(
                    fontsize: 18,
                    text: txtStaffSalary,
                    fontWeight: FontWeight.bold),
              ],
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height / 90,
            ),

            textFields(
                controller: controllerCelebrationCost,
                w: MediaQuery.of(context).size.width / 1.12,
                hintText: txtCelebration),

            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            animatedButton(
              h: MediaQuery.of(context).size.height / 14,
              w: MediaQuery.of(context).size.width / 2,
              text: txtSubmit,
              isReverse: true,
              selectedTextColor: Colors.black,
              transitionType: TransitionType.TOP_TO_BOTTOM,
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
