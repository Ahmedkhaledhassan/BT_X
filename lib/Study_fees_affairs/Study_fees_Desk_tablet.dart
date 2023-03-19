import 'package:bt_x/presentation/provider/study_fees_provider.dart';

import 'package:bt_x/core/app_colors.dart';
import 'package:bt_x/presentation/provider/basic_informations_provider.dart';
import 'package:bt_x/presentation/provider/lecturers_attendance_schedule_provider.dart';
import 'package:bt_x/presentation/provider/lecturers_informations_provider.dart';

import 'package:bt_x/presentation/provider/students_academic_results_provider.dart';
import 'package:bt_x/presentation/provider/students_attendance_schedule_provider.dart';
import 'package:bt_x/presentation/provider/students_data_provider.dart';
import 'package:bt_x/presentation/widgets/default_drop_down_button.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class StudyFeesScreen_Dsktop_tablet extends StatelessWidget {
  const StudyFeesScreen_Dsktop_tablet({super.key});

  @override
  Widget build(BuildContext context) {
    final studyFeesProvider = Provider.of<StudyFeesProvider>(context);
    String? level = studyFeesProvider.level;
    List<String> levels = studyFeesProvider.levels;
    String? department = studyFeesProvider.department;
    List<String> departments = studyFeesProvider.departments;
    String? division = studyFeesProvider.division;
    List<String> divisions = studyFeesProvider.divisions;
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
                  "الرسوم الدراسية",
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 110, left: 110),
                  child: Row(
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
                            studyFeesProvider.changeLevel(selectedLevel: value);
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
                            studyFeesProvider.changeDepartment(
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
                            studyFeesProvider.changeDivision(
                                selectedDivision: value);
                          },
                        ),
                      ),
                    ],
                  ),
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
                              Text(
                                "رقم الإذن",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "تاريخ الإذن",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "رقم الإيصال",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "تاريخ السداد",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "الإجمالي",
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
                                "${studyFeesProvider.code}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "${studyFeesProvider.name}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "${studyFeesProvider.Permission_number}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "${studyFeesProvider.Permission_Date}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "${studyFeesProvider.Receipt_number}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "${studyFeesProvider.date_Of_payment}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "${studyFeesProvider.Total}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
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
                    "إضافة وصل",
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
      ),
    );
  }
}
