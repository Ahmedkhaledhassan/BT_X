import 'package:bt_x/Students_attendance_table/Student_attendance_table_Mobile.dart';
import 'package:flutter/material.dart';

const List<String> list = <String>[
  'تكنولوجيا المعلومات',
  'الميكاترونكس',
  "الأوتوترونكس",
  "الظاقةالمتجددة"
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
          child: Section_Student_Drop_down(),
        ),
      ),
    );
  }
}

class Section_Student_Drop_down extends StatefulWidget {
  const Section_Student_Drop_down({super.key});

  @override
  State<Section_Student_Drop_down> createState() =>
      _Section_Student_Drop_downState();
}

class _Section_Student_Drop_downState extends State<Section_Student_Drop_down> {
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
          child: Text(
            value,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        );
      }).toList(),
    );
  }
}
