import 'package:flutter/material.dart';

class previous_qual_texts extends StatefulWidget {
  const previous_qual_texts({super.key});

  @override
  State<previous_qual_texts> createState() => _previous_qual_textsState();
}

class _previous_qual_textsState extends State<previous_qual_texts> {
  bool _Qualification = false;
  bool _entity = false;
  bool _graduation_year = false;
  bool _grade = false;
  bool _percent = false;

  var _Qualification_Controller;
  var _entityController;
  var _graduation_year_Controller;
  var _grade_Controller;
  var _percent_Controller;

  String Qualification = "ثانوي عام رياضة";
  String entity = "مدرسة الثانوية العسكرية";
  String graduation_year = "2019";
  String grade = "500";
  String percent = "100%";

  @override
  void initState() {
    super.initState();
    _Qualification_Controller = TextEditingController(text: Qualification);
    _entityController = TextEditingController(text: entity);
    _graduation_year_Controller = TextEditingController(text: graduation_year);
    _grade_Controller = TextEditingController(text: grade);
    _percent_Controller = TextEditingController(text: percent);
  }

  @override
  void dispose() {
    _Qualification_Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget _Qualification_TextField() {
      if (_Qualification)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                Qualification = newValue;

                _Qualification = false;
              });
            },
            autofocus: true,
            controller: _Qualification_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _Qualification = true;
          });
        },
        child: Row(
          children: [
            Text(
              Qualification,
              style: TextStyle(
                color: const Color(0xFF3E6BA9),
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      );
    }

    ;
    ////textfield2
    Widget _entity_TextField() {
      if (_entity)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                entity = newValue;

                _entity = false;
              });
            },
            autofocus: true,
            controller: _entityController,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _entity = true;
          });
        },
        child: Row(
          children: [
            Text(
              entity,
              style: TextStyle(
                color: const Color(0xFF3E6BA9),
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      );
    }

    ;
    Widget _graduation_year_TextField() {
      if (_graduation_year)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                graduation_year = newValue;

                _graduation_year = false;
              });
            },
            autofocus: true,
            controller: _graduation_year_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _graduation_year = true;
          });
        },
        child: Row(
          children: [
            Text(
              graduation_year,
              style: TextStyle(
                color: const Color(0xFF3E6BA9),
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      );
    }

    ;

    ;
    Widget _gradeTextField() {
      if (_grade)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                grade = newValue;

                _grade = false;
              });
            },
            autofocus: true,
            controller: _grade_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _grade = true;
          });
        },
        child: Row(
          children: [
            Text(
              grade,
              style: TextStyle(
                color: const Color(0xFF3E6BA9),
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      );
    }

    ;
    Widget _percent_TextField() {
      if (_percent)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                percent = newValue;

                _percent = false;
              });
            },
            autofocus: true,
            controller: _percent_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _percent = true;
          });
        },
        child: Row(
          children: [
            Text(
              percent,
              style: TextStyle(
                color: const Color(0xFF3E6BA9),
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      );
    }

    ;

    return Scaffold(
      body:
          Column(children: [_graduation_year_TextField(), _entity_TextField()]),
    );
  }
}
