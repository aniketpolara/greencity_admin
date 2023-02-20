import 'package:flutter/material.dart';
import 'package:greencity/common/text.dart';
import 'package:greencity/screens/login_page/login_page_end.dart';
import 'package:greencity/utils/colors.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

class LoginFirst extends StatefulWidget {
  const LoginFirst({super.key});

  @override
  State<LoginFirst> createState() => _LoginFirstState();
}

class _LoginFirstState extends State<LoginFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/login_1.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Column(
              //253369
              children: [
                const SizedBox(
                  height: 600,
                ),
                // container(color: black, h: 10, w: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPageSecond(),
                      ),
                    );
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
                            color: Colors.white,
                            offset: Offset(3, 3))
                      ],
                      borderRadius: BorderRadius.circular(23),
                    ),
                    child: Center(
                        child:
                            text(text: 'Sign In', color: white, fontsize: 20)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        height: 70,
                        child: Lottie.asset('assets/lotties/Comp 1.json',
                            repeat: false, reverse: false)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
