import 'package:flutter/material.dart';
import 'package:greencity/common/buttons.dart';
import 'package:greencity/common/containers.dart';
import 'package:greencity/common/text.dart';
import 'package:greencity/network/data/data.dart';
import 'package:greencity/screens/themes/themes.dart';
import 'package:greencity/utils/colors.dart';
import 'package:greencity/utils/images.dart';
import 'package:greencity/utils/strings.dart';
import 'package:toggle_list/toggle_list.dart';

class SwimmingPoolScreen extends StatefulWidget {
  const SwimmingPoolScreen({super.key});

  @override
  State<SwimmingPoolScreen> createState() => _SwimmingPoolScreenState();
}

class _SwimmingPoolScreenState extends State<SwimmingPoolScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CirclesBackground(
        topMediumWidth: screenWidth / 0.57,
        topMediumHight: screenHeight / 1.28,
        topMediumTop: screenHeight / -1.97,
        topMediumLeft: screenWidth / -2.57,
        backgroundColor: white,
        topSmallCircleColor: Colors.indigo.shade400,
        topMediumCircleColor: Colors.indigo.shade600,
        topRightCircleColor: white,
        bottomRightCircleColor: white,
        child: Padding(
          padding:
              EdgeInsets.only(top: screenHeight / 7.5, left: screenWidth / 55),
          child: Column(
            children: [
              CircleAvatar(
                radius: 75,
                backgroundColor: white,
                child: InkWell(
                  onTap: () {
                    showDialog(
                      barrierColor: Colors.black26,
                      context: context,
                      builder: (context) => StatefulBuilder(
                        builder: (context, setState) {
                          return SimpleDialog(
                            contentPadding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            children: [
                              Container(
                                height: 250,
                                width: 130,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 5,
                                        spreadRadius: 0.5,
                                        color: Colors.grey.shade600)
                                  ],
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(imgSwimmingPool),
                                  ),
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    );
                    // setState(() {
                    //   showContainer = !showContainer;
                    // });
                  },
                  child: CircleAvatar(
                    radius: 73,
                    backgroundColor: Colors.indigo.shade400,
                    backgroundImage: AssetImage(imgSwimmingPool),
                  ),
                ),
              ),
              // CircleAvatar(
              //   radius: 75,
              //   backgroundColor: white,
              //   child: CircleAvatar(
              //     radius: 73,
              //     backgroundColor: Colors.indigo.shade400,
              //     backgroundImage: AssetImage(imgSwimmingPool),
              //   ),
              // ),
              SizedBox(
                height: screenHeight / 20,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ToggleList(
                    divider: const SizedBox(height: 10),
                    toggleAnimationDuration: const Duration(milliseconds: 400),
                    scrollPosition: AutoScrollPosition.begin,
                    trailing: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.expand_more),
                    ),
                    children: List.generate(
                      clubHouseData.length,
                      (index) => ToggleListItem(
                        itemDecoration: BoxDecoration(
                            color: colorGradiant1,
                            borderRadius: BorderRadius.circular(15)),
                        content: membercontainer(
                            marginbottom: 10,
                            paddingBottpm: 10,
                            paddingLeft: 10,
                            paddingRight: 10,
                            paddingtop: 10,
                            h: screenHeight / 4.3,
                            w: screenWidth / 1.01,
                            color: colorGradiant1,
                            radiusBottomLeft: 20,
                            radiusBottomRight: 20,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8, left: 8),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      text(
                                          text: swimmingPool[index]['name'],
                                          fontWeight: FontWeight.w700,
                                          fontsize: 17),
                                    ],
                                  ),
                                  SizedBox(
                                    height: screenHeight / 50,
                                  ),
                                  Row(
                                    children: [
                                      text(text: swimmingPool[index]['date']),
                                    ],
                                  ),
                                  SizedBox(
                                    height: screenHeight / 120,
                                  ),
                                  Row(
                                    children: [
                                      text(text: swimmingPool[index]['time']),
                                    ],
                                  ),
                                  SizedBox(
                                    height: screenHeight / 120,
                                  ),
                                  Row(
                                    children: [
                                      text(text: swimmingPool[index]['paid']),
                                    ],
                                  ),
                                  SizedBox(height: screenHeight / 35),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      animatedButton(
                                          borderRadius: 10,
                                          selectedTextColor: black,
                                          backgroundColor:
                                              Colors.indigo.shade300,
                                          w: screenWidth / 6,
                                          h: screenHeight / 23,
                                          fontcolor: white,
                                          isReverse: true,
                                          text: txtApprove)
                                    ],
                                  )
                                ],
                              ),
                            )),
                        title: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: screenWidth / 35,
                                ),
                                text(
                                    text: swimmingPool[index]['flatNo'],
                                    fontWeight: FontWeight.w500,
                                    fontsize: 15),
                              ],
                            )
                          ],
                        ),
                        expandedHeaderDecoration: BoxDecoration(
                          color: Colors.indigo.shade300,
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // Expanded(
              //   child: ListView.builder(
              //     itemCount: clubHouseData.length,
              //     itemBuilder: (context, index) {
              //       return container(
              //           h: screenHeight / 15,
              //           w: screenWidth / 1.2,
              //           color: colorGradiant1);
              //     },
              //   ),
              // )
              //text(text: 'efhrbfnm')
            ],
          ),
        ),
      ),
    );
  }
}
