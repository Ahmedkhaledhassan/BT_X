import 'package:flutter/material.dart';

class parents_texts extends StatefulWidget {
  const parents_texts({super.key});

  @override
  State<parents_texts> createState() => _parents_textsState();
}

class _parents_textsState extends State<parents_texts> {
  bool _parent_name = false;
  bool _parent_nationality = false;
  bool _parent_town = false;
  bool _parent_address = false;
  bool _parent_job = false;
  bool _Employer_job = false;
  bool _degree_of_kinship = false;
  bool _parent_home_number = false;
  bool _parent_phone_number = false;
  bool _parent_email_address = false;
  bool _parent_fax = false;

  var _parent_name_Controller;
  var _parent_nationalityController;
  var _parent_town_Controller;
  var _parent_address_Controller;
  var _parent_job_Controller;
  var _Employer_job_Controller;
  var _degree_of_kinship_Controller;
  var _parent_home_number_Controller;
  var _parent_phone_number_Controller;
  var _parent_email_address_Controller;
  var _parent_fax_Controller;

  String parent_name = " خالد حسن ابوالليل";
  String parent_nationality = "مصري";
  String parent_town = "بني سويف - بني سويف";
  String parent_address = "الحي الاول - بني سويف";
  String parent_job = "مهندس كيميائي";
  String Employer_job = "جهة العمل";
  String degree_of_kinship = "اب";
  String parent_home_number = "0828828282";
  String parent_email_address = "01245325545";
  String parent_phone_number = "khaledjfiugdoi@gamil.com";
  String parent_fax = "فاكس";

  @override
  void initState() {
    super.initState();
    _parent_name_Controller = TextEditingController(text: parent_name);
    _parent_nationalityController =
        TextEditingController(text: parent_nationality);
    _parent_town_Controller = TextEditingController(text: parent_town);
    _parent_address_Controller = TextEditingController(text: parent_address);
    _parent_job_Controller = TextEditingController(text: parent_job);
    _Employer_job_Controller = TextEditingController(text: Employer_job);
    _degree_of_kinship_Controller =
        TextEditingController(text: degree_of_kinship);
    _parent_home_number_Controller =
        TextEditingController(text: parent_home_number);
    _parent_phone_number_Controller =
        TextEditingController(text: parent_phone_number);
    _parent_email_address_Controller =
        TextEditingController(text: parent_email_address);
  }

  @override
  void dispose() {
    _parent_name_Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget _parent_name_TextField() {
      if (_parent_name)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                parent_name = newValue;

                _parent_name = false;
              });
            },
            autofocus: true,
            controller: _parent_name_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _parent_name = true;
          });
        },
        child: Row(
          children: [
            Text(
              parent_name,
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
    Widget _parent_nationality_TextField() {
      if (_parent_nationality)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                parent_nationality = newValue;

                _parent_nationality = false;
              });
            },
            autofocus: true,
            controller: _parent_nationalityController,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _parent_nationality = true;
          });
        },
        child: Row(
          children: [
            Text(
              parent_nationality,
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
    Widget _parent_town_TextField() {
      if (_parent_town)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                parent_town = newValue;

                _parent_town = false;
              });
            },
            autofocus: true,
            controller: _parent_town_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _parent_town = true;
          });
        },
        child: Row(
          children: [
            Text(
              parent_town,
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
    Widget _parent_addressTextField() {
      if (_parent_address)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                parent_address = newValue;

                _parent_address = false;
              });
            },
            autofocus: true,
            controller: _parent_address_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _parent_address = true;
          });
        },
        child: Row(
          children: [
            Text(
              parent_address,
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
    Widget _parent_job_TextField() {
      if (_parent_job)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                parent_job = newValue;

                _parent_job = false;
              });
            },
            autofocus: true,
            controller: _parent_job_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _parent_job = true;
          });
        },
        child: Row(
          children: [
            Text(
              parent_job,
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
    Widget _Employer_jobTextField() {
      if (_Employer_job)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                Employer_job = newValue;

                _Employer_job = false;
              });
            },
            autofocus: true,
            controller: _Employer_job_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _Employer_job = true;
          });
        },
        child: Row(
          children: [
            Text(
              Employer_job,
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
    Widget _degree_of_kinship_TextField() {
      if (_degree_of_kinship)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                degree_of_kinship = newValue;

                _degree_of_kinship = false;
              });
            },
            autofocus: true,
            controller: _degree_of_kinship_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _degree_of_kinship = true;
          });
        },
        child: Row(
          children: [
            Text(
              degree_of_kinship,
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
    Widget _parent_home_number_TextField() {
      if (_parent_home_number)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                parent_home_number = newValue;

                _parent_home_number = false;
              });
            },
            autofocus: true,
            controller: _parent_home_number_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _parent_home_number = true;
          });
        },
        child: Row(
          children: [
            Text(
              parent_home_number,
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
    Widget __parent_phone_number_TextField() {
      if (_parent_phone_number)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                parent_phone_number = newValue;

                _parent_phone_number = false;
              });
            },
            autofocus: true,
            controller: _parent_phone_number_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _parent_phone_number = true;
          });
        },
        child: Row(
          children: [
            Text(
              parent_phone_number,
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
    Widget _parent_fax_TextField() {
      if (_parent_address)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                parent_address = newValue;

                _parent_address = false;
              });
            },
            autofocus: true,
            controller: _parent_address_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _parent_address = true;
          });
        },
        child: Row(
          children: [
            Text(
              parent_address,
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
    Widget _parent_email_addressTextField() {
      if (_parent_email_address)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                parent_email_address = newValue;

                _parent_email_address = false;
              });
            },
            autofocus: true,
            controller: _parent_email_address_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _parent_email_address = true;
          });
        },
        child: Row(
          children: [
            Text(
              parent_email_address,
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
        _parent_town_TextField(),
        _parent_nationality_TextField()
      ]),
    );
  }
}
