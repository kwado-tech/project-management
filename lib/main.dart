import 'package:flutter/material.dart';
import 'package:project_manager/pages/admin_module/admin_project_manager_form/admin_project_manager_form_page.dart';
import 'package:project_manager/pages/admin_module/admin_project_managers/admin_project_managers_page.dart';
import 'package:project_manager/pages/admin_module/admin_staffs/admin_staffs_page.dart';
import 'package:project_manager/pages/admin_module/admin_supervisor_form/admin_supervisor_form_page.dart';
import 'package:project_manager/pages/admin_module/admin_supervisors/admin_supervisors_page.dart';
import 'package:project_manager/pages/admin_module/admin_zones/admin_zones_page.dart';
import 'package:project_manager/pages/auth/auth_page.dart';
import 'package:project_manager/pages/supervisor_details/supervisor_details.dart';
import 'package:project_manager/pages/supervisors/supervisors_page.dart';
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
        '/admin-zones': (BuildContext context) =>
            AdminZonesPage(),
        '/admin-project-managers': (BuildContext context) =>
            AdminProjectManagersPage(),
        '/admin-project-manager-form': (BuildContext context) =>
            AdminProjectManagerFormPage(),
        '/admin-supervisors': (BuildContext context) => AdminSupervisorsPage(),
        '/admin-supervisor-form': (BuildContext context) => AdminSupervisorFormPage(),
        '/admin-staffs': (BuildContext context) => AdminStaffsPage()
      },
    );
  }
}
