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

class students_attendance_table_class extends StatefulWidget {
  const students_attendance_table_class({super.key});

  @override
  State<students_attendance_table_class> createState() => _testState();
}

class _testState extends State<students_attendance_table_class> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: OverflowBox(
          minHeight: 100,
          minWidth: 50,
          child: Container(
            width: 400,
            height: 500,
            decoration: BoxDecoration(
              border: Border.all(width: 10, color: Color(0xFF3E6BA9)),
              borderRadius: const BorderRadius.all(Radius.circular(1)),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: _size.width > 10 ? 2 : 4,
                  ),
                  Center(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        // ignore: prefer_const_constructors
                        SizedBox(
                          width: 18,
                        ),
                        const Text(
                          "المقرر الدراسي",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF707070)),
                        ),
                        const SizedBox(
                          width: 80,
                        ),
                        const Text(
                          "الدرجة",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF707070)),
                        ),
                        const SizedBox(
                          width: 90,
                        ),
                        const Text(
                          "التقدير",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF707070)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 350,
                    height: 380,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Color(0xFF3E6BA9)),
                      borderRadius: const BorderRadius.all(Radius.circular(1)),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 22,
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                "المادة",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                              const SizedBox(
                                width: 113,
                              ),
                              const Text(
                                "100",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                              const SizedBox(
                                width: 90,
                              ),
                              const Text(
                                "جيد جدا",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                "المادة",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                              const SizedBox(
                                width: 113,
                              ),
                              const Text(
                                "100",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                              const SizedBox(
                                width: 90,
                              ),
                              const Text(
                                "جيد جدا",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                "المادة",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                              const SizedBox(
                                width: 113,
                              ),
                              const Text(
                                "100",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                              const SizedBox(
                                width: 90,
                              ),
                              const Text(
                                "جيد جدا",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                "المادة",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                              const SizedBox(
                                width: 113,
                              ),
                              const Text(
                                "100",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                              const SizedBox(
                                width: 90,
                              ),
                              const Text(
                                "جيد جدا",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                "المادة",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                              const SizedBox(
                                width: 113,
                              ),
                              const Text(
                                "100",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                              const SizedBox(
                                width: 90,
                              ),
                              const Text(
                                "جيد جدا",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                "المادة",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                              const SizedBox(
                                width: 113,
                              ),
                              const Text(
                                "100",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                              const SizedBox(
                                width: 90,
                              ),
                              const Text(
                                "جيد جدا",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                "المادة",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                              const SizedBox(
                                width: 113,
                              ),
                              const Text(
                                "100",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                              const SizedBox(
                                width: 90,
                              ),
                              const Text(
                                "جيد جدا",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                "المادة",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                              const SizedBox(
                                width: 113,
                              ),
                              const Text(
                                "100",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                              const SizedBox(
                                width: 90,
                              ),
                              const Text(
                                "جيد جدا",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                "المادة",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                              const SizedBox(
                                width: 113,
                              ),
                              const Text(
                                "100",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                              const SizedBox(
                                width: 90,
                              ),
                              const Text(
                                "جيد جدا",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                "المادة",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                              const SizedBox(
                                width: 113,
                              ),
                              const Text(
                                "100",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                              const SizedBox(
                                width: 90,
                              ),
                              const Text(
                                "جيد جدا",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                "المادة",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                              const SizedBox(
                                width: 113,
                              ),
                              const Text(
                                "100",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                              const SizedBox(
                                width: 90,
                              ),
                              const Text(
                                "جيد جدا",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                "المادة",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                              const SizedBox(
                                width: 113,
                              ),
                              const Text(
                                "100",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                              const SizedBox(
                                width: 90,
                              ),
                              const Text(
                                "جيد جدا",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3E6BA9)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const SizedBox(
                        width: 18,
                      ),
                      const Text(
                        "المجموع",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF707070)),
                      ),
                      const SizedBox(
                        width: 102,
                      ),
                      const Text(
                        "التقدير",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF707070)),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      const Text(
                        "النسبة",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF707070)),
                      ),
                    ],
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const SizedBox(
                        width: 18,
                      ),
                      const Text(
                        "1600",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3E6BA9)),
                      ),
                      const SizedBox(
                        width: 123,
                      ),
                      const Text(
                        "جيد جدا",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3E6BA9)),
                      ),
                      const SizedBox(
                        width: 77,
                      ),
                      const Text(
                        "99.99%",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3E6BA9)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
