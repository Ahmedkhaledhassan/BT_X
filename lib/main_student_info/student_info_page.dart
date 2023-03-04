// import 'dart:developer';

// import 'package:bt_x/affairs_main_page/affairs_side_menue.dart';
// import 'package:bt_x/main_student_info/personality.dart';
// import 'package:bt_x/responsive_page/responsive.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

// class student_info_page extends StatefulWidget {
//   const student_info_page({
//     super.key,
//   });

//   @override
//   State<student_info_page> createState() => _educatinDataState();
// }

// class _educatinDataState extends State<student_info_page> {
//   final Color color1 = HexColor('#3E6BA9');
//   Container _Scaffold = Container();

//   @override
//   Widget build(BuildContext context) {
//     Size? _size = MediaQuery.of(context).size;
//     final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//     return SafeArea(
//       key: _scaffoldKey,
//       child: Scaffold(
//         //drawer here
//         drawer: Responsive.isMobile(context) || _size.height < 500
//             ? Drawer(child: sidemenu())
//             : null,

//         body: SafeArea(
//           child: SingleChildScrollView(
//             child: Center(
//               child: Column(
//                 children: [
//                   Container(
//                     width: 600,
//                     color: Colors.white,
//                     child: Column(children: [
//                       Text("البيانات التعليمية"),
//                       Container(
//                         padding: EdgeInsets.all(2),
//                         color: color1,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Expanded(
//                               child: ElevatedButton(
//                                 child: new Text("الطالب",
//                                     style: TextStyle(
//                                         fontSize:
//                                             _size.width <= 364 ? 10 : 15)),
//                                 style: ElevatedButton.styleFrom(
//                                   foregroundColor: _Scaffold == StudentScaffold
//                                       ? color1
//                                       : Colors.white,
//                                   backgroundColor: _Scaffold == StudentScaffold
//                                       ? Colors.white
//                                       : color1,
//                                 ),
//                                 onPressed: () {
//                                   setState(() {
//                                     _Scaffold = StudentScaffold;
//                                   });
//                                 },
//                               ),
//                             ),
//                             Expanded(
//                               child: MaterialButton(
//                                 child: new Text("النتائج الدراسية",
//                                     style: TextStyle(
//                                         fontSize:
//                                             _size.width <= 364 ? 10 : 15)),
//                                 textColor: _Scaffold == degreeScaffold
//                                     ? color1
//                                     : Colors.white,
//                                 color: _Scaffold == degreeScaffold
//                                     ? Colors.white
//                                     : color1,
//                                 onPressed: () {
//                                   setState(() {
//                                     _Scaffold = degreeScaffold;
//                                   });
//                                 },
//                               ),
//                             ),
//                             Expanded(
//                               child: MaterialButton(
//                                 child: new Text("جدول الحضور",
//                                     style: TextStyle(
//                                         fontSize:
//                                             _size.width <= 364 ? 10 : 15)),
//                                 textColor: _Scaffold == TableScaffold
//                                     ? color1
//                                     : Colors.white,
//                                 color: _Scaffold == TableScaffold
//                                     ? Colors.white
//                                     : color1,
//                                 onPressed: () {
//                                   setState(() {
//                                     _Scaffold = TableScaffold;
//                                   });
//                                 },
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                       SafeArea(
//                         child: Container(
//                           width: 600,
//                           height: 600,
//                           padding: _size.width > 450
//                               ? EdgeInsets.all(40)
//                               : EdgeInsets.only(top: 40),
//                           decoration: BoxDecoration(
//                               border: Border.all(width: 3, color: color1)),
//                           child: _Scaffold,
//                         ),
//                       ),
//                     ]),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class HexColor extends Color {
//   static int _getColorFromHex(String hexColor) {
//     hexColor = hexColor.toUpperCase().replaceAll("#", "");
//     if (hexColor.length == 6) {
//       hexColor = "FF" + hexColor;
//     }
//     return int.parse(hexColor, radix: 16);
//   }

//   HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
// }

// // bottomNavigationBar: BottomNavigationBar(
// //         items: const <BottomNavigationBarItem>[
// //           BottomNavigationBarItem(
// //               icon: Icon(Icons.arrow_left), label: 'السابق'),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.school),
// //             label: 'البيانات التعليمية',
// //             backgroundColor: Colors.purple,
// //           ),
// //           BottomNavigationBarItem(
// //               icon: Icon(Icons.arrow_right), label: 'التالي'),
// //         ],
// //       ),