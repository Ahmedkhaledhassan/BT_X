// ignore_for_file: prefer_const_constructors

import 'package:bt_x/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'dart:html';

class affairs_body_class extends StatelessWidget {
  const affairs_body_class({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width >= 650;
    return Scaffold(
      bottomNavigationBar: Stack(fit: StackFit.passthrough, children: [
        new Container(
          height: 25,
          color: Color(0xFF3E6BA9),
          child: Center(
              child: Text(
                  "جميع الحقوق محفوظة © طلاب جامعة بني سويف التكنولوجية",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white))),
        )
      ]),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,

              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    "مرحبا بك",
                    style: TextStyle(color: grey_text, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 9),
                  child: Text(
                    "احمد خالد حسن ابوالليل",
                    style: TextStyle(color: grey_text, fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'شئون الطلاب',
                style: TextStyle(color: grey_text, fontSize: 19),
              ),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.black),
                primary: Color.fromARGB(255, 255, 255, 255),
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 17),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'رعاية الطلاب',
                style: TextStyle(color: grey_text, fontSize: 19),
              ),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.black),
                primary: Color.fromARGB(255, 255, 255, 255),
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 17),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'المكتبة',
                style: TextStyle(color: grey_text, fontSize: 19),
              ),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.black),
                primary: Color.fromARGB(255, 255, 255, 255),
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 17),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "شكاوي واقتراحات",
                    style: TextStyle(color: grey_text, fontSize: 20),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(right: 0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "مقابلة العميد",
                    style: TextStyle(color: grey_text, fontSize: 20),
                  ),
                )),
            // Padding(
            //   padding: const EdgeInsets.only(left: 1000),
            //   child: SizedBox(
            //     height: 30,
            //     width: 2000,
            //     child: Padding(
            //       padding: const EdgeInsets.only(left: 150),
            //       child: Container(
            //         color: Color.fromARGB(255, 20, 30, 165),
            //         child: Text(
            //           "جميع الحقوق محفوظة لدي",
            //           style: TextStyle(color: Colors.white),
            //         ),
            //       ),
            //     ),
            //   ),
            // )
          ]),
        ),
      ),
    );
  }
}
