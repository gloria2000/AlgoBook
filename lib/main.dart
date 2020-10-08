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
      title: '',
      color: Color(0xFF24A19C),
      home: MyHomePage(title:'Algo Book'),
    );
  }
}
