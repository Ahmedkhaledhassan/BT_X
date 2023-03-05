import 'package:flutter/material.dart';

const List<String> list = <String>[
  'الفرقة الاولي',
  'السنة الثانية',
  'السنة الثالثة',
  'السنة الرابعة',
];

void main() => runApp(const DropdownButtonApp());

class DropdownButtonApp extends StatelessWidget {
  const DropdownButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DropdownButton Sample')),
        body: const Center(
          child: year_Student_attendance_drop_down(),
        ),
      ),
    );
  }
}

class year_Student_attendance_drop_down extends StatefulWidget {
  const year_Student_attendance_drop_down({super.key});

  @override
  State<year_Student_attendance_drop_down> createState() =>
      _year_Student_attendance_drop_downState();
}

class _year_Student_attendance_drop_downState
    extends State<year_Student_attendance_drop_down> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,
              style: TextStyle(
                fontSize: 14,
              )),
        );
      }).toList(),
    );
  }
}
