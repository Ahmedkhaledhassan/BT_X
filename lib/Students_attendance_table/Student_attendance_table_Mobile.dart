import 'package:bt_x/Students_attendance_table/students_attendance_table_class.dart';
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

class Student_attendance_table_Mobile extends StatefulWidget {
  const Student_attendance_table_Mobile({super.key});

  @override
  State<Student_attendance_table_Mobile> createState() => _testState();
}

class _testState extends State<Student_attendance_table_Mobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: students_attendance_table_class(),
        ),
      ),
    );
  }
}
