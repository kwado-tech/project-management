import 'package:flutter/material.dart';
import 'package:project_manager/pages/auth/auth_page.dart';
import 'package:project_manager/theme/theme_colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project Manager',
      theme: ThemeData(
        primaryColor: tPrimaryColor,
        fontFamily: 'Quicksand'),
      home: AuthPage(),
    );
  }
}
