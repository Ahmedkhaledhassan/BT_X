import 'package:flutter/material.dart';

const List<String> list = <String>[
  'السنة الاولي',
  'السنة الثانية',
  'السنة الثالثة',
  'السنة الرابعة'
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
          child: division_Student(),
        ),
      ),
    );
  }
}

class division_Student extends StatefulWidget {
  const division_Student({super.key});

  @override
  State<division_Student> createState() => _division_StudentState();
}

class _division_StudentState extends State<division_Student> {
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
