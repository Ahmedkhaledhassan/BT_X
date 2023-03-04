// ignore_for_file: prefer_const_constructors

import 'package:bt_x/Documents_Request/Documents_request_class.dart';
import 'package:bt_x/Documents_Request/Documents_request_page.dart';
import 'package:bt_x/Exams_table/Exams_table.dart';
import 'package:bt_x/Login&register/LoginPage_class.dart';
import 'package:bt_x/Login&register/Login_page_responsive.dart';
import 'package:bt_x/Login&register/Register_responsive.dart';
import 'package:bt_x/Login&register/register_class.dart';
import 'package:bt_x/Study_result_page/study_result.dart';
import 'package:bt_x/affairs_main_page/affairs_main.dart';
import 'package:bt_x/fees_page/fees_class.dart';
import 'package:bt_x/fees_page/fees_page.dart';
import 'package:bt_x/inquiries_page/affairs_Inquiries_page.dart';
import 'package:bt_x/qr.dart';
import 'package:bt_x/scanner.dart';
import 'package:bt_x/study_table/stydy_table.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'dart:html';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MaterialApp(
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
    theme: ThemeData(),
    home: QR(),
  ));
}
