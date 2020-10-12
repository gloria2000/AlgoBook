import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:algobook/pages/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Color(0xFF24A19C),
        primaryColor:Color(0xFF24A19C),
        splashColor: Color(0xFF24A19C),
        focusColor: Color(0xFF24A19C),
        highlightColor: Color(0xFF24A19C),
        hintColor: Color(0xFF24A19C),
        hoverColor: Color(0xFF24A19C),
      ),
      title: '',
      color: Color(0xFF24A19C),
      home: MyHomePage(title:'Algo Book'),
    );
  }
}
