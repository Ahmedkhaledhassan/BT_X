import 'package:flutter/material.dart';

class contact_texts extends StatefulWidget {
  const contact_texts({super.key});

  @override
  State<contact_texts> createState() => _contact_textsState();
}

class _contact_textsState extends State<contact_texts> {
  bool _Town = false;
  bool _address = false;
  bool _home_phone = false;
  bool _phone_number = false;
  bool _email_address = false;
  bool _fax = false;
  bool _builing_number = false;
  bool _apartment_number = false;
  bool _mail_box = false;
  bool _email_code = false;

  var _Town_Controller;
  var _addressController;
  var _home_phone_Controller;
  var _phone_number_Controller;
  var _email_address_Controller;
  var _fax_Controller;
  var _builing_number_Controller;
  var _apartment_number_Controller;
  var _mail_box_Controller;
  var _email_code_Controller;

  String Town = "بني سويف - بني سويف";
  String address = "بني سويف - بني سويف";
  String home_phone = "0828747747";
  String phone_number = "01323445677";
  String email_address = "ahmedkhaled@gmail.com";
  String fax = "fax";
  String builing_number = "30";
  String apartment_number = "10";
  String mail_box = "mailbox";
  String email_code = "454354330";

  @override
  void initState() {
    super.initState();
    _Town_Controller = TextEditingController(text: Town);
    _addressController = TextEditingController(text: address);
    _home_phone_Controller = TextEditingController(text: home_phone);
    _phone_number_Controller = TextEditingController(text: phone_number);
    _email_address_Controller = TextEditingController(text: email_address);
    _fax_Controller = TextEditingController(text: fax);
    _builing_number_Controller = TextEditingController(text: builing_number);
    _apartment_number_Controller =
        TextEditingController(text: apartment_number);
    _mail_box_Controller = TextEditingController(text: mail_box);
    _email_code_Controller = TextEditingController(text: email_code);
  }

  @override
  void dispose() {
    _Town_Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget _Town_TextField() {
      if (_Town)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                Town = newValue;

                _Town = false;
              });
            },
            autofocus: true,
            controller: _Town_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _Town = true;
          });
        },
        child: Row(
          children: [
            Text(
              Town,
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
    Widget _address_TextField() {
      if (_address)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                address = newValue;

                _address = false;
              });
            },
            autofocus: true,
            controller: _addressController,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _address = true;
          });
        },
        child: Row(
          children: [
            Text(
              address,
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
    Widget _home_phone_TextField() {
      if (_home_phone)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                home_phone = newValue;

                _home_phone = false;
              });
            },
            autofocus: true,
            controller: _home_phone_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _home_phone = true;
          });
        },
        child: Row(
          children: [
            Text(
              home_phone,
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
    Widget _phone_numberTextField() {
      if (_phone_number)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                phone_number = newValue;

                _phone_number = false;
              });
            },
            autofocus: true,
            controller: _phone_number_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _phone_number = true;
          });
        },
        child: Row(
          children: [
            Text(
              phone_number,
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
    Widget _email_address_TextField() {
      if (_email_address)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                email_address = newValue;

                _email_address = false;
              });
            },
            autofocus: true,
            controller: _email_address_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _email_address = true;
          });
        },
        child: Row(
          children: [
            Text(
              email_address,
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
    Widget _faxTextField() {
      if (_fax)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                fax = newValue;

                _fax = false;
              });
            },
            autofocus: true,
            controller: _fax_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _fax = true;
          });
        },
        child: Row(
          children: [
            Text(
              fax,
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
    Widget _builing_number_TextField() {
      if (_builing_number)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                builing_number = newValue;

                _builing_number = false;
              });
            },
            autofocus: true,
            controller: _builing_number_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _builing_number = true;
          });
        },
        child: Row(
          children: [
            Text(
              builing_number,
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
    Widget _apartment_number_TextField() {
      if (_apartment_number)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                apartment_number = newValue;

                _apartment_number = false;
              });
            },
            autofocus: true,
            controller: _apartment_number_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _apartment_number = true;
          });
        },
        child: Row(
          children: [
            Text(
              apartment_number,
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
    Widget _mail_box_TextField() {
      if (_mail_box)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                mail_box = newValue;

                _mail_box = false;
              });
            },
            autofocus: true,
            controller: _mail_box_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _mail_box = true;
          });
        },
        child: Row(
          children: [
            Text(
              mail_box,
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
    Widget _email_codeTextField() {
      if (_email_code)
        // ignore: curly_braces_in_flow_control_structures
        return Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onSubmitted: (newValue) {
              setState(() {
                email_code = newValue;

                _email_code = false;
              });
            },
            autofocus: true,
            controller: _email_code_Controller,
          ),
        );
      return InkWell(
        onTap: () {
          setState(() {
            _email_code = true;
          });
        },
        child: Row(
          children: [
            Text(
              email_code,
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
      body: Column(children: [_home_phone_TextField(), _address_TextField()]),
    );
  }
}
