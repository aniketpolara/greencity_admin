import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:greencity/common/containers.dart';
import 'package:greencity/screens/change_password/change_password_widgets.dart';
import 'package:greencity/screens/member_page/member_widgets.dart';
import 'package:greencity/utils/colors.dart';
import 'package:greencity/utils/icons.dart';
import 'package:greencity/utils/strings.dart';
import 'package:hexcolor/hexcolor.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width * 1,
      //color: Colors.blue,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Group 31.png'),
              fit: BoxFit.cover)),
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1999,
                //height: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  container(
                      h: MediaQuery.of(context).size.height * 0.0662,
                      w: MediaQuery.of(context).size.width * 0.43,
                      color: Colors.white,
                      topleft: 20,
                      bottemleft: 20,
                      topright: 5,
                      bottemright: 5,
                      blurRadius: 10,
                      spreadRadius: 0.5,
                      dy: 3,
                      dx: -3,
                      shadowColor: Colors.grey,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Change',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'DancingScript',
                                fontWeight: FontWeight.bold),
                          ),
                          DefaultTextStyle(
                            style: TextStyle(
                              fontSize: 20.0,
                              color: colorBlack,
                              fontFamily: 'DancingScript',
                              fontWeight: FontWeight.bold,
                            ),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                RotateAnimatedText(' Password'),
                                ScaleAnimatedText(' Password'),
                                TypewriterAnimatedText(' Password'),
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.098,
              ),
              Row(
                children: [
                  container(
                    h: MediaQuery.of(context).size.height * 0.198,
                    w: MediaQuery.of(context).size.width * 0.695,
                    color: Colors.white,
                    bottemright: 50,
                    topright: 50,
                    topleft: 10,
                    bottemleft: 10,
                    shadowColor: Colors.grey,
                    blurRadius: 10,
                    spreadRadius: 0.5,
                    dx: 4,
                    dy: 4,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.066,
                                width: MediaQuery.of(context).size.width *
                                    0.6944, // color: Colors.black,
                                child: textfieldPass(
                                  hintText: txtEnterPass,
                                  fontSize: 14,
                                  color: Colors.black54,
                                  prefixIcon: Icon(icAccount),
                                  prefixIconColor: colorPass,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.066,
                                width:
                                    MediaQuery.of(context).size.width * 0.6944,

                                // color: Colors.yellow,
                                child: textfieldPass(
                                  hintText: txtNewPass,
                                  fontSize: 14,
                                  color: Colors.black54,
                                  prefixIcon: Icon(icPass),
                                  prefixIconColor: colorPass,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.066,
                              width: MediaQuery.of(context).size.width * 0.6944,
                              // color: Colors.pink,
                              child: textfieldPass(
                                hintText: txtNewConfirm,
                                fontSize: 14,
                                color: Colors.black54,
                                disabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                prefixIcon: Icon(icPass),
                                prefixIconColor: colorPass,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 342,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 225,
                  ),
                  gesturedetector(
                    onTap: () {},
                    child: container(
                        h: 50,
                        w: 50,
                        color: HexColor('2930a3'),
                        bottemleft: 30,
                        bottemright: 30,
                        topleft: 30,
                        topright: 30,
                        child: const Icon(
                          Icons.arrow_forward_outlined,
                          color: Colors.white,
                          size: 30,
                        )),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
