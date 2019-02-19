import 'package:flutter/material.dart';
import 'package:project_manager/pages/admin_module/admin_supervisors/widgets/admin_supervisor_list.dart';
import 'package:project_manager/theme/theme_colors.dart';

class AdminSupervisorsPage extends StatelessWidget {

  void _navigateToSupervisorForm() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Supervisors'),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: tPrimaryColor,
            child: Icon(Icons.person_add),
            onPressed: _navigateToSupervisorForm),
        body: AdminSupervisorList());
  }
}