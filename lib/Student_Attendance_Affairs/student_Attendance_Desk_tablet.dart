import 'package:bt_x/presentation/provider/study_fees_provider.dart';
import 'package:bt_x/core/app_colors.dart';
import 'package:bt_x/presentation/provider/basic_informations_provider.dart';
import 'package:bt_x/presentation/provider/lecturers_attendance_schedule_provider.dart';
import 'package:bt_x/presentation/provider/lecturers_informations_provider.dart';
import 'package:bt_x/presentation/provider/students_academic_results_provider.dart';
import 'package:bt_x/presentation/provider/students_attendance_schedule_provider.dart';
import 'package:bt_x/presentation/provider/students_data_provider.dart';
import 'package:bt_x/presentation/provider/study_fees_provider.dart';
import 'package:bt_x/presentation/widgets/default_drop_down_button.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class student_Attendance_Desk_tablet extends StatelessWidget {
  const student_Attendance_Desk_tablet({super.key});

  @override
  Widget build(BuildContext context) {
    final studentsAttendanceScheduleProvider =
        Provider.of<StudentsAttendanceScheduleProvider>(context);
    String? level = studentsAttendanceScheduleProvider.level;
    List<String> levels = studentsAttendanceScheduleProvider.levels;
    String? department = studentsAttendanceScheduleProvider.department;
    List<String> departments = studentsAttendanceScheduleProvider.departments;
    String? division = studentsAttendanceScheduleProvider.division;
    List<String> divisions = studentsAttendanceScheduleProvider.divisions;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<StudyFeesProvider>(
          create: (_) => StudyFeesProvider(),
        ),
        ChangeNotifierProvider<StudentsAcademicResultsProvider>(
          create: (_) => StudentsAcademicResultsProvider(),
        ),
        ChangeNotifierProvider<StudentsAttendanceScheduleProvider>(
          create: (_) => StudentsAttendanceScheduleProvider(),
        ),
        ChangeNotifierProvider<BasicInformationsProvider>(
          create: (_) => BasicInformationsProvider(),
        ),
        ChangeNotifierProvider<StudentsDataProvider>(
          create: (_) => StudentsDataProvider(),
        ),
        ChangeNotifierProvider<LecturersAttendanceScheduleProvider>(
          create: (_) => LecturersAttendanceScheduleProvider(),
        ),
        ChangeNotifierProvider<LecturersInformationsProvider>(
          create: (_) => LecturersInformationsProvider(),
        ),
      ],
      child: Directionality(
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
                  "جدول حضور الطلبة",
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Text(
                      "الفرقة",
                      style: TextStyle(
                        color: AppColors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: DefaultDropDownButton(
                        list: levels,
                        value: level,
                        onChanged: (value) {
                          studentsAttendanceScheduleProvider.changeLevel(
                              selectedLevel: value);
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "القسم",
                      style: TextStyle(
                        color: AppColors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: DefaultDropDownButton(
                        list: departments,
                        value: department,
                        onChanged: (value) {
                          studentsAttendanceScheduleProvider.changeDepartment(
                              selectedDepartment: value);
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "الشعبة",
                      style: TextStyle(
                        color: AppColors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: DefaultDropDownButton(
                        list: divisions,
                        value: division,
                        onChanged: (value) {
                          studentsAttendanceScheduleProvider.changeDivision(
                              selectedDivision: value);
                        },
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
                                "الكود",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "الاسم",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              FittedBox(
                                child: Text(
                                  "مادة 1 \n 1 2 3 4 5 6 7 8",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              FittedBox(
                                child: Text(
                                  "مادة 2 \n 1 2 3 4 5 6 7 8",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              FittedBox(
                                child: Text(
                                  "مادة 3 \n 1 2 3 4 5 6 7 8",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              FittedBox(
                                child: Text(
                                  "مادة 4 \n 1 2 3 4 5 6 7 8",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              FittedBox(
                                child: Text(
                                  "مادة 5 \n 1 2 3 4 5 6 7 8",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              FittedBox(
                                child: Text(
                                  "مادة 6 \n 1 2 3 4 5 6 7 8",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text(
                                "45464",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "أحمد محمود",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              FittedBox(
                                child: Row(
                                  children: List<Icon>.generate(
                                    8,
                                    (index) => index.remainder(2) == 0
                                        ? Icon(
                                            Icons.check,
                                            color: AppColors.grey,
                                          )
                                        : Icon(
                                            Icons.cancel,
                                            color: AppColors.grey,
                                          ),
                                  ),
                                ),
                              ),
                              FittedBox(
                                child: Row(
                                  children: List<Icon>.generate(
                                    8,
                                    (index) => index.remainder(2) == 0
                                        ? Icon(
                                            Icons.check,
                                            color: AppColors.grey,
                                          )
                                        : Icon(
                                            Icons.cancel,
                                            color: AppColors.grey,
                                          ),
                                  ),
                                ),
                              ),
                              FittedBox(
                                child: Row(
                                  children: List<Icon>.generate(
                                    8,
                                    (index) => index.remainder(2) == 0
                                        ? Icon(
                                            Icons.check,
                                            color: AppColors.grey,
                                          )
                                        : Icon(
                                            Icons.cancel,
                                            color: AppColors.grey,
                                          ),
                                  ),
                                ),
                              ),
                              FittedBox(
                                child: Row(
                                  children: List<Icon>.generate(
                                    8,
                                    (index) => index.remainder(2) == 0
                                        ? Icon(
                                            Icons.check,
                                            color: AppColors.grey,
                                          )
                                        : Icon(
                                            Icons.cancel,
                                            color: AppColors.grey,
                                          ),
                                  ),
                                ),
                              ),
                              FittedBox(
                                child: Row(
                                  children: List<Icon>.generate(
                                    8,
                                    (index) => index.remainder(2) == 0
                                        ? Icon(
                                            Icons.check,
                                            color: AppColors.grey,
                                          )
                                        : Icon(
                                            Icons.cancel,
                                            color: AppColors.grey,
                                          ),
                                  ),
                                ),
                              ),
                              FittedBox(
                                child: Row(
                                  children: List<Icon>.generate(
                                    8,
                                    (index) => index.remainder(2) == 0
                                        ? Icon(
                                            Icons.check,
                                            color: AppColors.grey,
                                          )
                                        : Icon(
                                            Icons.cancel,
                                            color: AppColors.grey,
                                          ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
