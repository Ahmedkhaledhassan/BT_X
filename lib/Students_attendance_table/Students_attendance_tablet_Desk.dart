// ignore_for_file: prefer_const_constructors

import 'package:bt_x/Students_attendance_table/Section_Student_Drop_down.dart';
import 'package:bt_x/Students_attendance_table/division_Student.dart';
import 'package:bt_x/Students_attendance_table/students_attendance_table_class.dart';
import 'package:bt_x/Students_attendance_table/year_Student_attendance_drop_down.dart';
import 'package:bt_x/Study_result_page/Result_drop_down.dart';
import 'package:bt_x/constants/constants.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class colorss {
  Color ItemsColor = const Color(0xFF3E6BA9);
  Color miainColor = const Color(0xFF707070);
  //there will be other colors here
}

class Student_attendance_table_tablet_Desk extends StatefulWidget {
  const Student_attendance_table_tablet_Desk({super.key});

  @override
  State<Student_attendance_table_tablet_Desk> createState() => _testState();
}

class _testState extends State<Student_attendance_table_tablet_Desk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Center(
        child: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "بيانات الطلبة",
                    style: TextStyle(
                        color: const Color(0xFF707070),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Container(
                      width: 450,
                      height: 120,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.white),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(1)),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "الفرقة",
                                style: TextStyle(
                                    color: const Color(0xFF707070),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              year_Student_attendance_drop_down(),
                              SizedBox(
                                width: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "القسم",
                                    style: TextStyle(
                                        color: const Color(0xFF707070),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Section_Student_Drop_down(),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "الشعبة",
                                        style: TextStyle(
                                            color: const Color(0xFF707070),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      division_Student()
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 170),
                            child: Row(
                              children: [
                                Text(
                                  "بحث",
                                  style: TextStyle(
                                      color: const Color(0xFF707070),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  width: 100,
                                  height: 25,
                                  child: TextField(
                                    textDirection: TextDirection.rtl,
                                    keyboardType: TextInputType.multiline,
                                    maxLines: 5,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(1)),
                                        borderSide: BorderSide(
                                          width: 1,
                                          color: grey_text,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                        width: 1,
                                        color: grey_text,
                                      )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
