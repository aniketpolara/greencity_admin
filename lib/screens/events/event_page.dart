import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:greencity/common/buttons.dart';
import 'package:greencity/common/listtiles.dart';
import 'package:greencity/common/text.dart';
import 'package:greencity/common/textfields.dart';
import 'package:greencity/utils/colors.dart';
import 'package:greencity/utils/images.dart';
import 'package:greencity/utils/strings.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  File? file;
  Future picimage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    file = File(image!.path);
    setState(() {});
  }

  void clearText() {
    controllerName.clear();
    controllerDate.clear();
  }

  List<Map> events = [];

  eventData() {
    events.insert(
      0,
      {
        'name': controllerName.text,
        'date': controllerDate.text,
        'image': file,
      },
    );
    setState(() {});
  }

  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerDate = TextEditingController();
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
        title: text(color: Colors.white, text: 'Events', fontsize: 24),
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: button1,
          onPressed: () {
            showDialog(
              context: context,
              builder: (
                context,
              ) =>
                  StatefulBuilder(
                builder: (context, setState) => SimpleDialog(
                  backgroundColor: colorGradiant1,
                  // insetPadding: EdgeInsets.all(10),
                  contentPadding: const EdgeInsets.all(10),
                  title: Container(
                    height: MediaQuery.of(context).size.height * 0.068,
                    //height: 50,
                    width: MediaQuery.of(context).size.width * 0.579,
                    //width: 200,
                    decoration: BoxDecoration(
                      color: colorSelected,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 4),
                        text(
                          text: 'Add Event',
                          color: white,
                        ),
                        const Spacer(
                          flex: 2,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.close,
                              color: white,
                              size: 18,
                            )),
                      ],
                    ),
                  ),
                  titlePadding: const EdgeInsets.only(bottom: 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  children: [
                    textFields(controller: controllerName, hintText: 'Date'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 60,
                    ),
                    textFields(
                        controller: controllerDate, hintText: 'name of event'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 60,
                    ),
                    Stack(children: [
                      Container(
                        alignment: Alignment.bottomRight,
                        height: MediaQuery.of(context).size.height * 0.41,
                        width: MediaQuery.of(context).size.width * 0.869,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0.5, 2),
                                color: Colors.black26,
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: file == null
                                  ? const AssetImage(
                                      'assets/images/add_img.png')
                                  : FileImage(file!) as ImageProvider,
                            )),
                      ),
                      // ignore: prefer_const_constructors
                      Padding(
                        padding: const EdgeInsets.only(left: 230, top: 275),
                        child: GestureDetector(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.068,
                            width: MediaQuery.of(context).size.width * 0.14,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(imgCamera)),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          onTap: () {
                            picimage().then((value) => setState(
                                  () {},
                                ));
                          },
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        animatedButton(
                          h: MediaQuery.of(context).size.height / 15,
                          w: MediaQuery.of(context).size.width / 3,
                          text: txtClear,
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
                            return clearText();
                          },
                        ),
                        animatedButton(
                          h: MediaQuery.of(context).size.height / 15,
                          w: MediaQuery.of(context).size.width / 3,
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
                            eventData();
                            Navigator.pop(context);
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          label: text(text: '+', fontsize: 20)),
      body: ListView.builder(
        itemCount: events.isEmpty ? 1 : events.length,
        itemBuilder: (context, index) {
          // context
          return Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.027,
              ),
              SizedBox(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.32,
                  width: MediaQuery.of(context).size.width * 0.91,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, offset: Offset(3, 3))
                      ]),
                  child: events.isEmpty
                      ? Center(
                          child: Lottie.asset(
                            'assets/lotties/rvAk4g1Y1Y.json',
                            width: 300,
                            repeat: true,
                            reverse: true,
                            animate: true,
                          ),
                        )
                      : Column(
                          children: [
                            SizedBox(
                              child: listtile(
                                leading: const CircleAvatar(),
                                title: text(text: events[index]['name']),
                                subtitle: text(text: events[index]['date']),
                              ),
                            ),
                            SizedBox(
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.20,
                                width:
                                    MediaQuery.of(context).size.width * 0.825,
                                decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(20)),
                                child: events[index]['image'] == null
                                    ? Image.asset(
                                        'assets/images/kite.jpg',
                                        fit: BoxFit.cover,
                                      )
                                    : Image.file(
                                        events[index]['image'],
                                        fit: BoxFit.cover,
                                      ),
                              ),
                            ),
                            // text(text: events[index]['name']),
                            // text(text: events[index]['date']),
                          ],
                        ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
