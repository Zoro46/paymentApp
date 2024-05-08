import 'package:assignment_1/Dashboard.dart';
import 'package:assignment_1/home_page.dart';
import 'package:assignment_1/login_screen.dart';
import 'package:assignment_1/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:assignment_1/practice.dart';
import 'package:assignment_1/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile_page(),
    );
  }
}
