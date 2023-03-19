//

import 'package:bt_x/Data_Screen/Data_screen_responsive.dart';
import 'package:bt_x/Documents_Request/Documents_request_page.dart';
import 'package:bt_x/Exams_table/Exams_table.dart';
import 'package:bt_x/Lecture_Attendance/Lecture_Attendance_table_responsive.dart';
import 'package:bt_x/Student_Academiv_result_affairs/Student_Academic_Result_Responsive.dart';
import 'package:bt_x/Student_Academiv_result_affairs/student_academic_result_Desk_tablet.dart';
import 'package:bt_x/Student_Attendance_Affairs/Student_Attendance_responsive.dart';
import 'package:bt_x/Student_Attendance_Affairs/students_attendance_schedule_screen.dart';
import 'package:bt_x/Study_fees_affairs/Study_Fees_Responsive.dart';
import 'package:bt_x/affairs_main_page/affairs_main.dart';
import 'package:bt_x/basic_info/Basic_info_responsive.dart';
import 'package:bt_x/lecture_info/lecture_informationresponsive.dart';
import 'package:bt_x/presentation/provider/exam_schadule.dart';
import 'package:bt_x/presentation/provider/fees_provider.dart';
import 'package:bt_x/presentation/provider/lecture_schadule.dart';
import 'package:bt_x/presentation/provider/study_fees_provider.dart';
import 'package:bt_x/basic_info/basic_informations_screen.dart';

import 'package:bt_x/presentation/provider/basic_informations_provider.dart';
import 'package:bt_x/presentation/provider/lecturers_attendance_schedule_provider.dart';
import 'package:bt_x/presentation/provider/lecturers_informations_provider.dart';
import 'package:bt_x/presentation/provider/students_data_provider.dart';
import 'package:bt_x/presentation/provider/year_result.dart';
import 'package:bt_x/study_table/stydy_table.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bt_x/Study_result_page/study_result.dart';
import 'package:bt_x/Study_result_page/study_result_class.dart';
import 'package:bt_x/fees_page/fees_class.dart';
import 'package:bt_x/fees_page/fees_page.dart';
import 'package:bt_x/presentation/provider/students_academic_results_provider.dart';
import 'package:bt_x/presentation/provider/students_attendance_schedule_provider.dart';

import './responsive_page/responsive.dart';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
        ChangeNotifierProvider<LecturesScheduleProvider>(
          create: (_) => LecturesScheduleProvider(),
        ),
        ChangeNotifierProvider<StudyFeesPro>(
          create: (_) => StudyFeesPro(),
        ),
        ChangeNotifierProvider<ExamsScheduleProvider>(
          create: (_) => ExamsScheduleProvider(),
        ),
        ChangeNotifierProvider<YearResultProvider>(
          create: (_) => YearResultProvider(),
        ),
      ],
      child: MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          // English
          Locale('ar'),
        ],
        debugShowCheckedModeBanner: false,
        home: Exams_table_page(),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}
