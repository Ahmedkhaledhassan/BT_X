// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:bt_x/students.dart';
import 'dart:html';

class students extends StatelessWidget {
  const students({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: InkWell(
        splashColor: Colors.black26,
        onTap: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Ink.image(
              image: NetworkImage(
                  'https://tse2.mm.bing.net/th?id=OIP.XDPf6nG0udm5e7b_sfUdYgHaD-&pid=Api&P=0'),
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 6),
            Text(
              'button',
              style: TextStyle(fontSize: 32, color: Colors.white),
            )
          ],
        ),
      )),
    );

    appBar:
    AppBar(
      flexibleSpace: Container(
          child: Image.asset("logo2.png"),
          margin: EdgeInsets.only(
            top: 0,
            left: 600,
            right: 600,
            bottom: 0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,

            border: Border.all(
                color: Color.fromARGB(255, 255, 255, 255), width: 0.0),
            borderRadius: new BorderRadius.all(
              Radius.elliptical(5, 5),
            ),
            // shape: BoxShape.circle,
            // color: Colors.white,
            //   'logo2.png',
            //   height: 200,),
          )),
      toolbarHeight: 50.5,
      title: Text(
        'Students',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Color.fromARGB(255, 20, 30, 165),
    );
    drawer:
    Drawer();

    //  Padding(padding: const EdgeInsets.only(top: 20),

    //  ),
  }
}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color(0xffaa44aa)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(200, 200), 100, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
