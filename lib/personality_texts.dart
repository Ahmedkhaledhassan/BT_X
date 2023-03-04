import 'package:flutter/material.dart';

class personality_texts extends StatefulWidget {
  const personality_texts({super.key});

  @override
  State<personality_texts> createState() => _personality_textsState();
}

class _personality_textsState extends State<personality_texts> {
  bool _name_in_arabic = false;
  bool _name_in_English = false;
  bool _code = false;
  bool _religion = false;
  bool _type = false;
  bool _nationality = false;
  bool _Date_of_Birth = false;
  bool _place_of_Birth = false;
  bool _marital_status = false;
  bool _ID_Type = false;
  bool _ID_Number = false;
  bool _Published_Date = false;
  bool _Publish_location = false;
  bool _Father_name = false;
  bool _Mother_name = false;
  bool _Entry_status = false;
  bool _Acceptance_type = false;
  bool _Acceptance_Year = false;

  var _name_in_Arabic_Controller;
  var _name_in_EnglishController;
  var _code_Controller;
  var _religion_Controller;
  var _type_Controller;
  var _nationality_Controller;
  var _Date_of_Birth_Controller;
  var _place_of_Birht_Controller;
  var _martial_status_Controller;
  var _ID_Type_Controller;
  var _ID_Number_Controller;
  var _Published_Date_Controller;
  var _Published_location_Controller;
  var _Father_name_Controller;
  var _Mother_name_Controller;
  var _Entry_status_Controller;
  var _Acceptance_type_Controller;
  var _Acceptance_Year_Controller;

  String name_in_arabic = "احمد خالد";
  String name_in_English = "Ahmed khaled hasan Aboellil";
  String code = "2019020002";
  String religion = "مسلم";
  String type = "ذكر";
  String nationality = "مصري";
  String Date_of_Birth = "06/09/2000";
  String place_of_Birht = "بني سويف";
  String martial_status = "اعزب";
  String ID_Type = "بطاقة قومية";
  String ID_Number = "958059860986";
  String Published_Date = "06/09/2000";
  String Published_location = "06/09/2000";
  String Father_name = "خالد حسن ابو الليل";
  String Mother_name = "خالد حسن ابو الليل";
  String Entry_status = "مستجد تقدير";
  String Acceptance_type = "محول";
  String Acceptance_Year = "2019-2020";

  @override
  void initState() {
    super.initState();
    _name_in_Arabic_Controller = TextEditingController(text: name_in_arabic);
    _name_in_EnglishController = TextEditingController(text: name_in_English);
    _code_Controller = TextEditingController(text: code);
    _religion_Controller = TextEditingController(text: religion);
    _type_Controller = TextEditingController(text: type);
    _nationality_Controller = TextEditingController(text: nationality);
    _Date_of_Birth_Controller = TextEditingController(text: Date_of_Birth);
    _place_of_Birht_Controller = TextEditingController(text: place_of_Birht);
    _martial_status_Controller = TextEditingController(text: martial_status);
    _ID_Type_Controller = TextEditingController(text: ID_Type);
    _ID_Number_Controller = TextEditingController(text: ID_Number);
    _Published_Date_Controller = TextEditingController(text: Published_Date);
    _Published_location_Controller =
        TextEditingController(text: Published_location);
    _Father_name_Controller = TextEditingController(text: Father_name);
    _Mother_name_Controller = TextEditingController(text: Mother_name);
    _Entry_status_Controller = TextEditingController(text: Entry_status);
    _Acceptance_type_Controller = TextEditingController(text: Acceptance_type);
    _Acceptance_Year_Controller = TextEditingController(text: Acceptance_Year);
  }

  @override
  void dispose() {
    _name_in_Arabic_Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget _name_in_arabic_TextField() {
      if (_name_in_arabic)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                name_in_arabic = newValue;

                _name_in_arabic = false;
              });
            },
            autofocus: true,
            controller: _name_in_Arabic_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _name_in_arabic = true;
          });
        },
        child: Row(
          children: [
            Text(
              name_in_arabic,
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
    Widget _name_in_English_TextField() {
      if (_name_in_English)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                name_in_English = newValue;

                _name_in_English = false;
              });
            },
            autofocus: true,
            controller: _name_in_EnglishController,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _name_in_English = true;
          });
        },
        child: Row(
          children: [
            Text(
              name_in_English,
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
    Widget _code_TextField() {
      if (_code)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                code = newValue;

                _code = false;
              });
            },
            autofocus: true,
            controller: _code_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _code = true;
          });
        },
        child: Row(
          children: [
            Text(
              code,
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
    Widget _Acceptance_Year_TextField() {
      if (_Acceptance_Year)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                Acceptance_Year = newValue;

                _Acceptance_Year = false;
              });
            },
            autofocus: true,
            controller: _Acceptance_Year_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _Acceptance_Year = true;
          });
        },
        child: Row(
          children: [
            Text(
              Acceptance_Year,
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
    Widget _religionTextField() {
      if (_religion)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                religion = newValue;

                _religion = false;
              });
            },
            autofocus: true,
            controller: _religion_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _religion = true;
          });
        },
        child: Row(
          children: [
            Text(
              religion,
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
    Widget _type_TextField() {
      if (_type)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                type = newValue;

                _type = false;
              });
            },
            autofocus: true,
            controller: _type_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _type = true;
          });
        },
        child: Row(
          children: [
            Text(
              type,
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
    Widget _nationalityTextField() {
      if (_nationality)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                nationality = newValue;

                _nationality = false;
              });
            },
            autofocus: true,
            controller: _nationality_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _nationality = true;
          });
        },
        child: Row(
          children: [
            Text(
              nationality,
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
    Widget _Date_of_Birth_TextField() {
      if (_Date_of_Birth)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                Date_of_Birth = newValue;

                _Date_of_Birth = false;
              });
            },
            autofocus: true,
            controller: _Date_of_Birth_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _Date_of_Birth = true;
          });
        },
        child: Row(
          children: [
            Text(
              Date_of_Birth,
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
    Widget _place_of_Birth_TextField() {
      if (_place_of_Birth)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                place_of_Birht = newValue;

                _place_of_Birth = false;
              });
            },
            autofocus: true,
            controller: _place_of_Birht_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _place_of_Birth = true;
          });
        },
        child: Row(
          children: [
            Text(
              place_of_Birht,
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
    Widget _martial_status_TextField() {
      if (_marital_status)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                martial_status = newValue;

                _marital_status = false;
              });
            },
            autofocus: true,
            controller: _martial_status_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _marital_status = true;
          });
        },
        child: Row(
          children: [
            Text(
              martial_status,
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
    Widget _ID_TypeTextField() {
      if (_ID_Type)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                ID_Type = newValue;

                _ID_Type = false;
              });
            },
            autofocus: true,
            controller: _ID_Type_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _ID_Type = true;
          });
        },
        child: Row(
          children: [
            Text(
              ID_Type,
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
    Widget _ID_NumberTextField() {
      if (_ID_Number)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                ID_Number = newValue;

                _ID_Number = false;
              });
            },
            autofocus: true,
            controller: _ID_Number_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _ID_Number_Controller = true;
          });
        },
        child: Row(
          children: [
            Text(
              ID_Number,
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
    Widget _Published_locationTextField() {
      if (_name_in_arabic)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                Published_location = newValue;

                _Publish_location = false;
              });
            },
            autofocus: true,
            controller: _Published_location_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _Publish_location = true;
          });
        },
        child: Row(
          children: [
            Text(
              Published_location,
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
    Widget _Published_Date_TextField() {
      if (_Published_Date)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                Published_Date = newValue;

                _Published_Date = false;
              });
            },
            autofocus: true,
            controller: _Published_Date_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _Published_Date = true;
          });
        },
        child: Row(
          children: [
            Text(
              Published_Date,
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
    Widget _Father_nameTextField() {
      if (_Father_name)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                Father_name = newValue;

                _Father_name = false;
              });
            },
            autofocus: true,
            controller: _Father_name_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _Father_name = true;
          });
        },
        child: Row(
          children: [
            Text(
              Father_name,
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
    Widget _Mother_nameTextField() {
      if (_Mother_name)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                Mother_name = newValue;

                _Mother_name = false;
              });
            },
            autofocus: true,
            controller: _Mother_name_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _Mother_name = true;
          });
        },
        child: Row(
          children: [
            Text(
              Mother_name,
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
    Widget _Entry_status_TextField() {
      if (_Entry_status)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                Entry_status = newValue;

                _Entry_status = false;
              });
            },
            autofocus: true,
            controller: _Entry_status_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _Entry_status = true;
          });
        },
        child: Row(
          children: [
            Text(
              Entry_status,
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
    Widget _Acceptance_type_TextField() {
      if (_Acceptance_type)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                Acceptance_type = newValue;

                _Acceptance_type = false;
              });
            },
            autofocus: true,
            controller: _Acceptance_type_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _Acceptance_type = true;
          });
        },
        child: Row(
          children: [
            Text(
              Acceptance_type,
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
      body: Column(children: [
        _code_TextField(),
        _Father_nameTextField(),
        _Mother_nameTextField(),
        _Acceptance_Year_TextField(),
        _Acceptance_type_TextField(),
        _name_in_English_TextField()
      ]),
    );
  }
}
