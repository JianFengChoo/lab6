import 'package:flutter/material.dart';
import 'package:lab5_part2/dashboardpage/dashboard.dart';
import 'dashboardpage/dashboard2.dart';
import 'accountpage/account1.dart';
import 'accountpage/account2.dart';
import 'engineerpage/engineer1.dart';
import 'engineerpage/engineer2.dart';
import 'settingpage/setting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Account1(),
      routes: {
        '/dashboard': (context) => DashBoard(),
        '/dashboard2': (context) => Dashboard2(),
        '/account1': (context) => Account1(),
        '/account2': (context) => Account2(),
        '/engineer1': (context) => Engineer(),
        '/engineer2': (context) => Engineer2(),
        '/setting': (context) => Setting(),
      },
    );
  }
}

