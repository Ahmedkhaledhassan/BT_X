// ignore_for_file: prefer_const_constructors, dead_code

import 'dart:ui';

import 'package:bt_x/Student_Attendance_Affairs/student_Attendance_Desk_tablet.dart';
import 'package:bt_x/Student_Attendance_Affairs/students_attendance_schedule_screen.dart';
import 'package:bt_x/Study_fees_affairs/Study_fees_Desk_tablet.dart';
import 'package:bt_x/Study_fees_affairs/study_fees_screen.dart';
import 'package:bt_x/affairs_main_page/side_menue.dart';

import 'package:bt_x/responsive_page/responsive.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';

import 'dart:html';

import 'package:flutter_localizations/flutter_localizations.dart';

class student_Attendance_responsive extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  PageController page = PageController();

  late final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: MaterialApp(
          title: 'Students Attendace',
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            // Arabic
            Locale('ar'),
          ],
          debugShowCheckedModeBanner: false,
          home: Scaffold(
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
            body: StudentsAttendanceScheduleScreen(),
            appBar: AppBar(
              backgroundColor: Color(0xFF3E6BA9), // Will work
              title: Row(
                children: [
                  Image.asset('b3.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  Text("شئون الطلاب"),
                ],
              ),
            ),
            drawer: Drawer(
              child: Container(
                child: sidemenu(),
              ),
            ),
          ),
        ),

        //desktop view
        desktop: MaterialApp(
          title: 'Study Fees',
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            // Arabic
            Locale('ar'),
          ],
          debugShowCheckedModeBanner: false,
          home: Scaffold(
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
            body: Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    child: sidemenu(),
                  ),
                ),
                Flexible(
                  flex: 7,
                  child: Container(
                    child: student_Attendance_Desk_tablet(),
                  ),
                ),
              ],
            ),
            appBar: AppBar(
              backgroundColor: Color(0xFF3E6BA9), // Will work
              title: Row(
                children: [
                  Image.asset('b3.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  Text("شئون الطلاب"),
                ],
              ),
            ),
          ),
        ),
        tablet: MaterialApp(
          title: 'Study Result',
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            // Arabic
            Locale('ar'),
          ],
          debugShowCheckedModeBanner: false,
          home: Scaffold(
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
            body: Row(
              children: [
                Flexible(
                  flex: 3,
                  child: Container(
                    child: sidemenu(),
                  ),
                ),
                Flexible(
                  flex: 6,
                  child: Container(
                    child: student_Attendance_Desk_tablet(),
                  ),
                )
              ],
            ),
            appBar: AppBar(
              backgroundColor: Color(0xFF3E6BA9), // Will work
              title: Row(
                children: [
                  Image.asset('b3.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  Text("شئون الطلاب"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color(0xffaa44aa)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(200, 200), 100, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
