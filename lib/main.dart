import 'package:bmi_application/mainbody.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp( bmiApp());
}

class bmiApp extends StatefulWidget {
  bmiApp({Key? key}) : super(key: key);

  @override
  _bmiAppState createState() => _bmiAppState();
}

class _bmiAppState extends State<bmiApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home : Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("BMI Application",style : GoogleFonts.poppins()),
        ),
        body:  MainBody(),
      )
    );
  }
}