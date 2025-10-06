import 'package:flutter/material.dart';
import 'package:tictic/constants/colors.dart';
import 'package:tictic/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TicTic',
      routes: routes,
      theme: kAppTheme,
    );
  }
}