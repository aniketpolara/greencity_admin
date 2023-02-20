import 'package:flutter/material.dart';
import 'package:greencity/common/text.dart';
import 'package:greencity/screens/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:greencity/utils/colors.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

import '../../common/textfields.dart';

class LoginPageSecond extends StatefulWidget {
  const LoginPageSecond({super.key});

  @override
  State<LoginPageSecond> createState() => _LoginPageSecondState();
}

class _LoginPageSecondState extends State<LoginPageSecond> {
  TextEditingController controllerUserNameLogin = TextEditingController();
  TextEditingController controllerPasswordLogin = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/login_2.jpg'),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.36,
                ),
                textFields(
                  w: MediaQuery.of(context).size.width * 0.8333333,
                  controller: controllerUserNameLogin,
                  hintText: 'User-name',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.026,
                ),
                textFields(
                  w: MediaQuery.of(context).size.width * 0.8333333,
                  controller: controllerPasswordLogin,
                  hintText: 'Password',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomNavigationBarPage(),
                        ));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.066,
                    width: MediaQuery.of(context).size.width * 0.8333333,
                    decoration: BoxDecoration(
                      color: HexColor('253369'),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 0.01,
                            color: Colors.grey,
                            offset: Offset(3, 3))
                      ],
                      borderRadius: BorderRadius.circular(23),
                    ),
                    child: Center(
                        child:
                            text(text: 'Sign In', color: white, fontsize: 20)),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.056,
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.28,
                    width: MediaQuery.of(context).size.width * 0.8333333,
                    child: Lottie.asset('assets/lotties/micro.json')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
