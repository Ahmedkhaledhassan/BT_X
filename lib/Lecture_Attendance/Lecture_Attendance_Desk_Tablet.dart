import 'package:bt_x/core/app_colors.dart';
import 'package:bt_x/core/default_check_box.dart';
import 'package:bt_x/presentation/provider/lecturers_attendance_schedule_provider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class LecturersAttendanceScheduleScreen_Desk_Tablet extends StatelessWidget {
  const LecturersAttendanceScheduleScreen_Desk_Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    final lecturersAttendanceScheduleProvider =
        Provider.of<LecturersAttendanceScheduleProvider>(context);
    int selectedScheduleType =
        lecturersAttendanceScheduleProvider.selectedScheduleType;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 10.0,
          ),
          child: Column(
            children: [
              Text(
                "جدول حضور المحاضرين",
                style: TextStyle(
                  color: Colors.grey[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    onPressed: () {
                      lecturersAttendanceScheduleProvider
                          .changeSelectedScheduleType(index: 0);
                    },
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    color: selectedScheduleType == 0
                        ? AppColors.primary
                        : AppColors.primary.withOpacity(0.7),
                    child: const Text(
                      "اسبوعي",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      lecturersAttendanceScheduleProvider
                          .changeSelectedScheduleType(index: 1);
                    },
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    color: selectedScheduleType == 1
                        ? AppColors.primary
                        : AppColors.primary.withOpacity(0.7),
                    child: const Text(
                      "شهرى",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.primary,
                      width: 8.0,
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Table(
                      textDirection: TextDirection.rtl,
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      border: TableBorder.all(
                        color: AppColors.primary,
                        width: 2.0,
                      ),
                      children: [
                        TableRow(
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                          ),
                          children: const [
                            Text(
                              "اليوم",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "المحاضر",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "المادة",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "الفرقة",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "الساعة",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "الحضور",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Text(
                              "السبت\n12/10",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 70.0,
                                  child: Center(
                                    child: Text(
                                      "محاضر 1",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: AppColors.primary,
                                  thickness: 2,
                                ),
                                SizedBox(
                                  height: 70.0,
                                  child: Center(
                                    child: Text(
                                      "محاضر 2",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 70.0,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            "المادة",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: AppColors.grey,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Divider(
                                        color: AppColors.primary,
                                        thickness: 2.0,
                                      ),
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            "المادة",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: AppColors.grey,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: AppColors.primary,
                                  thickness: 2.0,
                                ),
                                SizedBox(
                                  height: 70.0,
                                  child: Center(
                                    child: Text(
                                      "",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 70.0,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            "الفرقة",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: AppColors.grey,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Divider(
                                        color: AppColors.primary,
                                        thickness: 2.0,
                                      ),
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            "الفرقة",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: AppColors.grey,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: AppColors.primary,
                                  thickness: 2.0,
                                ),
                                SizedBox(
                                  height: 70.0,
                                  child: Center(
                                    child: Text(
                                      "",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 70.0,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            "الساعة",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: AppColors.grey,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Divider(
                                        color: AppColors.primary,
                                        thickness: 2.0,
                                      ),
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            "الساعة",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: AppColors.grey,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: AppColors.primary,
                                  thickness: 2.0,
                                ),
                                SizedBox(
                                  height: 70.0,
                                  child: Center(
                                    child: Text(
                                      "",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 70.0,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Center(
                                          child: DefaultCheckBox(
                                            value: false,
                                          ),
                                        ),
                                      ),
                                      Divider(
                                        color: AppColors.primary,
                                        thickness: 2.0,
                                      ),
                                      Expanded(
                                        child: Center(
                                          child: DefaultCheckBox(
                                            value: false,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: AppColors.primary,
                                  thickness: 2.0,
                                ),
                                SizedBox(
                                  height: 70.0,
                                  child: Center(
                                    child: DefaultCheckBox(
                                      value: false,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "عرض تقرير",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18.0,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
