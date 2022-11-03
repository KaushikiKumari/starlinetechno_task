import 'package:flutter/material.dart';
import 'package:starlinetechno_task/views/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blueGrey, fontFamily: "Ubuntu-Regular"),
      home: MainPage(),
    );
  }
}
