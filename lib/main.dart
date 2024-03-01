// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tes_magang_a/homepage_screen.dart';
import 'package:tes_magang_a/launch_screen.dart';
import 'package:tes_magang_a/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LaunchScreen(),
    );
  }
}
