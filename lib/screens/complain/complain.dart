import 'package:flutter/material.dart';
import 'package:greencity/common/containers.dart';
import 'package:greencity/common/text.dart';
import 'package:greencity/network/data/data.dart';
import 'package:greencity/screens/complain/complain_widget.dart';
import 'package:greencity/utils/colors.dart';
import 'package:greencity/utils/images.dart';
import 'package:greencity/utils/strings.dart';

class Complain extends StatefulWidget {
  const Complain({super.key});

  @override
  State<Complain> createState() => _ComplainState();
}

class _ComplainState extends State<Complain>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
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
          flexibleSpace: const Image(
            image: AssetImage(imgAppbar),
            fit: BoxFit.cover,
          ),
          backgroundColor: white,
          title: text(text: 'Helpdesk', fontsize: 22),
          bottom: PreferredSize(
            preferredSize: const Size(35, 35),
            child: TabBar(
              indicatorColor: white,
              indicatorWeight: 3,
              controller: tabController,
              tabs: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    text(
                        text: txtOpenIssues,
                        fontWeight: FontWeight.w600,
                        fontsize: 16.5),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    text(
                        text: txtResolvedIssues,
                        fontWeight: FontWeight.w600,
                        fontsize: 16.5),
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
              // const SizedBox(
              //   height: 25,
              // ),
              ListView.builder(
                itemCount: complainData.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
                    padding:
                        const EdgeInsets.only(top: 15, left: 10, right: 10),
                    height: 165,
                    width: 320,
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 1.9,
                              blurRadius: 8,
                              color: Colors.grey.shade200)
                        ]),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            helpdeskContainer(
                              h: 28,
                              w: 50,
                              color: colorBackGroundNew,
                              child: text(
                                  text: 'New',
                                  fontsize: 15,
                                  color: colorNew,
                                  fontWeight: FontWeight.w500),
                            ),
                            helpdeskContainer(
                              h: 28,
                              marginRight: 8,
                              w: 110,
                              color: colorBackGroundTicket,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  text(
                                      text: 'Ticket No.:',
                                      fontsize: 15,
                                      color: colorTicket,
                                      fontWeight: FontWeight.w500),
                                  text(
                                      text: complainData[index]['ticketNo'],
                                      fontsize: 15,
                                      color: colorTicketNumber,
                                      fontWeight: FontWeight.w500),
                                ],
                              ),
                            ),
                            SizedBox(width: 70),
                            text(
                                text: complainData[index]['time'],
                                fontsize: 14,
                                color: colorTime),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 8,
                            ),
                            text(
                                text: complainData[index]['typeOfHelp'],
                                fontsize: 19,
                                fontWeight: FontWeight.w500)
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 8,
                            ),
                            text(
                                text: complainData[index]['issue'],
                                fontsize: 15,
                                fontWeight: FontWeight.w500,
                                color: colorTime)
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Divider(
                          color: colorTicket,
                          indent: 10,
                          endIndent: 10,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            text(
                                text: complainData[index]['name'],
                                color: colorTicket),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
              Container(),
            ])),
          ],
        ));
  }
}
