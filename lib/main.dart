import 'package:flutter/material.dart';
import 'package:project_manager/pages/auth/auth_page.dart';
import 'package:project_manager/pages/supervisor_details/supervisor_details.dart';
import 'package:project_manager/pages/supervisors/supervisors_page.dart';
import 'package:project_manager/pages/zones/zones_page.dart';
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
        fontFamily: 'Quicksand',
      ),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => AuthPage(),
        '/supervisors': (BuildContext context) => SupervisorsPage(),
        '/supervisor-details': (BuildContext context) =>
            SupervisorDetailsPage(),
        '/zones': (BuildContext context) =>
            ZonesPage(),
      },
    );
  }
}
