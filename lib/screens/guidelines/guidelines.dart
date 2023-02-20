import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:greencity/common/buttons.dart';
import 'package:greencity/common/text.dart';
import 'package:greencity/screens/guidelines/guidelines_widgets.dart';
import 'package:greencity/screens/notice_add/notice_widget.dart';
import 'package:greencity/utils/colors.dart';
import 'package:greencity/utils/images.dart';
import 'package:greencity/utils/strings.dart';

class GuideLines extends StatefulWidget {
  const GuideLines({super.key});

  @override
  State<GuideLines> createState() => _GuideLinesState();
}

class _GuideLinesState extends State<GuideLines> with TickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  List guideline = [];

  addRules() {
    guideline.insert(0, {'rules': guideLinesController.text});
    setState(() {});
  }

  TextEditingController guideLinesController = TextEditingController();
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
        bottom: PreferredSize(
          preferredSize: const Size(20, 20),
          child: TabBar(
              indicatorColor: Colors.white,
              controller: tabController,
              tabs: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    text(
                        text: 'Preview',
                        fontWeight: FontWeight.w600,
                        fontsize: 18),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    text(
                        text: 'Add Data',
                        fontWeight: FontWeight.w600,
                        fontsize: 18),
                    const SizedBox(
                      height: 35,
                    )
                  ],
                )
              ]),
        ),
        title: text(color: Colors.white, text: txtGuidelines, fontsize: 24),
      ),
      body: Column(
        // ignore: prefer_const_constructors
        children: [
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                ListView.builder(
                  itemCount: guideline.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        margin:
                            const EdgeInsets.only(top: 10, left: 20, right: 20),
                        width: 100,
                        decoration: BoxDecoration(
                            color: textfieldgrey,
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0.5, 2),
                                color: Colors.black26,
                              )
                            ],
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            text(
                                text: guideline[index]['rules'],
                                fontsize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w300),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 3.5,
                      ),
                      noticeContainer(
                          //text(),
                          textFieldsGuidelines(
                              controller: guideLinesController,
                              hintText: 'Addnotice'),
                          MediaQuery.of(context).size.height / 2.5,
                          MediaQuery.of(context).size.width / 1.5),

                      SizedBox(
                        height: MediaQuery.of(context).size.height / 15,
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
                        onPress: () {
                          addRules();
                          guideLinesController.clear();
                          setState(() {});
                        },
                      ),
                      // MaterialButton(
                      //   onPressed: () {
                      //     addRules();
                      //     setState(() {});
                      //   },
                      //   child: const Text('submit'),
                      // ),
                      // animatedButton(onPress: () {}, text: 'submit')
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
