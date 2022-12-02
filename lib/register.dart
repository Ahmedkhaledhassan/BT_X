import 'package:bt_x/LoginPage.dart';
import 'package:flutter/material.dart';

import 'package:bt_x/MyTextField.dart';
import 'package:flutter/material.dart';
import 'dart:html';

class register extends StatelessWidget {
  const register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(15),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Text("Sign Up:", style: TextStyle(fontSize: 22)),
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  MyTextField(
                    icon: Icon(Icons.person_add),
                    hint: "First name",
                    inputType: TextInputType.emailAddress,
                    isPassword: false,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  MyTextField(
                    hint: "Last name",
                    inputType: TextInputType.text,
                    isPassword: true,
                    icon: Icon(Icons.person_add),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  MyTextField(
                    icon: Icon(Icons.credit_card_outlined),
                    hint: "ID",
                    inputType: TextInputType.emailAddress,
                    isPassword: false,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  MyTextField(
                    icon: Icon(Icons.email),
                    hint: "E-mail",
                    inputType: TextInputType.emailAddress,
                    isPassword: false,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  MyTextField(
                    icon: Icon(Icons.phone_android),
                    hint: "Phone number",
                    inputType: TextInputType.emailAddress,
                    isPassword: false,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  MyTextField(
                    icon: Icon(Icons.password_rounded),
                    hint: "Password",
                    inputType: TextInputType.emailAddress,
                    isPassword: true,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  MyTextField(
                    icon: Icon(Icons.paste_sharp),
                    hint: "Confirm password",
                    inputType: TextInputType.emailAddress,
                    isPassword: false,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 179, 175, 175)),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 239, 255, 14),
                      ),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.only(
                            left: 150, right: 150, top: 15, bottom: 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Have an account ?", style: TextStyle(fontSize: 18)),
                      //TextButton.icon(
                      //onPressed: (){},
                      //icon: Icon(Icons.person, color: Colors.black,size: 24.0,),
                      //label: Text('Logout', style: TextStyle(color: Colors.black)),)
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        child: Text('Sign In',
                            style: TextStyle(
                                color: Color.fromARGB(255, 20, 30, 165),
                                fontSize: 17)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
