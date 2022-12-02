import 'package:bt_x/MyTextField.dart';
import 'package:bt_x/register.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'dart:html';

class LoginPage extends StatelessWidget {
  TextEditingController emailcontroller = new TextEditingController();

  TextEditingController passwordController = new TextEditingController();
  var defaultText = TextStyle(color: Colors.red);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Image.asset(
                  "logo2.png",
                  height: 240,
                  width: 350,
                ),
                MyTextField(
                  icon: Icon(Icons.email),
                  hint: "Enter your E-mail",
                  inputType: TextInputType.emailAddress,
                  isPassword: false,
                ),
                SizedBox(
                  height: 10,
                ),
                MyTextField(
                  hint: "Enter your Password",
                  inputType: TextInputType.text,
                  isPassword: true,
                  icon: Icon(Icons.password),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 20, 30, 165),
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
                    Text("Don't have an account yet ?",
                        style: TextStyle(fontSize: 18)),
                    //TextButton.icon(
                    //onPressed: (){},
                    //icon: Icon(Icons.person, color: Colors.black,size: 24.0,),
                    //label: Text('Logout', style: TextStyle(color: Colors.black)),)
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const register()),
                        );
                      },
                      child: Text('Sign Up',
                          style: TextStyle(
                              color: Color.fromARGB(255, 3, 3, 0),
                              fontSize: 17)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Forum',
                    style: TextStyle(fontSize: 20),
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
                  height: 100,
                ),
                Row(
                  children: [
                    Text("all Rights Reserved©",
                        style: TextStyle(fontSize: 18)),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "BST",
                        style: TextStyle(color: Colors.red),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
