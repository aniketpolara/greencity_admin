import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:greencity/common/buttons.dart';
import 'package:greencity/common/text.dart';
import 'package:greencity/common/textStyle.dart';
import 'package:greencity/common/textfields.dart';
import 'package:greencity/utils/colors.dart';
import 'package:greencity/utils/images.dart';
import 'package:greencity/utils/strings.dart';

class WorkTunedScreen extends StatefulWidget {
  const WorkTunedScreen({super.key});

  @override
  State<WorkTunedScreen> createState() => _WorkTunedScreenState();
}

class _WorkTunedScreenState extends State<WorkTunedScreen>
    with TickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  TextEditingController workname = TextEditingController();
  TextEditingController workmobileno = TextEditingController();
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
        title: text(color: Colors.white, text: txtworkturned, fontsize: 24),
        bottom: PreferredSize(
          preferredSize: const Size(35, 35),
          child: TabBar(
            indicatorColor: Colors.white,
            controller: tabController,
            tabs: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  text(
                      text: txtShow, fontWeight: FontWeight.w600, fontsize: 18),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  text(text: txtAdd, fontWeight: FontWeight.w600, fontsize: 18),
                  const SizedBox(
                    height: 35,
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: TabBarView(controller: tabController, children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.75,
              color: Colors.pink,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.75,
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
                        txtworkturnedname,
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
                        controller: workname,
                        hintText: txtenterworkturnedname,
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
                        controller: workmobileno,
                        hintText: txtentermobileno,
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
            )
          ]))
        ],
      ),
    );
  }
}
