import 'package:flutter/material.dart';

class LecturersAttendanceScheduleProvider with ChangeNotifier {
  int selectedScheduleType = 0;

  void changeSelectedScheduleType({required int index}) {
    selectedScheduleType = index;
    notifyListeners();
  }
}
