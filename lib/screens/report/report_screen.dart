import 'package:flutter/material.dart';
import 'package:greencity/common/containers.dart';
import 'package:greencity/common/dropdown.dart';
import 'package:greencity/common/text.dart';
import 'package:greencity/screens/report/add_report.dart';

import 'package:greencity/utils/colors.dart';
import 'package:greencity/utils/images.dart';
import 'package:greencity/utils/strings.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<StatefulWidget> createState() => ReportScreenState();
}

class ReportScreenState extends State<ReportScreen> {
  String? year;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorSelected,
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {});
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddReports(),
              ));
        },
      ),
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: const Image(
          image: AssetImage(imgAppbar),
          fit: BoxFit.cover,
        ),
        elevation: 2,
        title: text(color: Colors.white, text: txtReport, fontsize: 24),
      ),
      body: Column(
        children: [
          dropdownButton(
            hinttext: text(text: txtSelectYear),
            value: year,
            items: [
              DropdownMenuItem(
                  value: '2018',
                  child: Center(
                    child: text(text: txt2018),
                  )),
              DropdownMenuItem(
                  value: '2019',
                  child: Center(
                    child: text(text: txt2019),
                  )),
              DropdownMenuItem(
                  value: '2020',
                  child: Center(
                    child: text(text: txt2020),
                  )),
              DropdownMenuItem(
                  value: '2021',
                  child: Center(
                    child: text(text: txt2021),
                  )),
              DropdownMenuItem(
                  value: '2022',
                  child: Center(
                    child: text(text: txt2022),
                  )),
            ],
            onChanged: (value) {
              setState(() {
                year = value;
              });
            },
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 20,
              ),
              text(text: 'March', fontWeight: FontWeight.w600, fontsize: 15)
            ],
          ),
          membercontainer(
            margintop: 10,
            marginleft: 10,
            radiusTopLeft: 10,
            radiusTopRight: 10,
            marginright: 10,
            h: MediaQuery.of(context).size.height / 18,
            color: colorSelected,
            child: Row(
              children: [
                Table(
                  textDirection: TextDirection.ltr,
                  defaultColumnWidth: FixedColumnWidth(
                      MediaQuery.of(context).size.width / 2.131),
                  border: TableBorder.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      // style: BorderStyle.solid,
                      borderRadius: BorderRadius.circular(10),
                      width: 2),
                  children: [
                    TableRow(children: [
                      TableCell(
                          child: SizedBox(
                        height: 40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            text(
                                text: 'Aniket',
                                fontsize: 17,
                                color: Colors.white),
                          ],
                        ),
                      )),
                      TableCell(
                          child: SizedBox(
                        height: 40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            text(
                                text: 'Aniket',
                                fontsize: 17,
                                color: Colors.white),
                          ],
                        ),
                      )),
                    ]),
                    TableRow(children: [
                      TableCell(
                        // verticalAlignment: TableCellVerticalAlignment.top,
                        child: SizedBox(
                          height: 30,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              text(
                                  text: 'Aniket',
                                  fontsize: 15,
                                  color: Colors.black),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                          child: SizedBox(
                        height: 30,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            text(
                                text: 'Aniket',
                                fontsize: 15,
                                color: Colors.black),
                          ],
                        ),
                      )),
                    ]),
                    TableRow(children: [
                      TableCell(
                          child: SizedBox(
                        height: 30,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            text(text: 'Aniket', fontsize: 15, color: black),
                          ],
                        ),
                      )),
                      TableCell(
                          child: SizedBox(
                        height: 30,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            text(text: 'Aniket', fontsize: 15, color: black),
                          ],
                        ),
                      )),
                    ]),
                    // TableRow(
                    //  decoration: const BoxDecoration(color: Colors.pink),
                    //     children: [
                    //       Column(children: const [
                    //         SizedBox(
                    //           height: 15,
                    //         ),
                    //         Text('Javatpoint')
                    //       ]),
                    //       Column(children: const [Text('Flutter')]),
                    //     ]),
                    // TableRow(children: [
                    //   Column(children: const [Text('Javatpoint')]),
                    //   Column(children: const [Text('MySQL')]),
                    // ]),
                    // TableRow(children: [
                    //   Column(children: const [Text('Javatpoint')]),
                    //   Column(children: const [Text('ReactJS')]),
                    // ]),
                  ],
                )
              ],
              // children: [text(text: 'June', color: white)],
            ),
          )
        ],
      ),
    );
  }
}
