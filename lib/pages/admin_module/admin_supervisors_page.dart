import 'package:flutter/material.dart';
import 'package:project_manager/pages/admin_module/widgets/admin_supervisors/admin_supervisor_list.dart';
import 'package:project_manager/theme/theme_colors.dart';

class AdminSupervisorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Supervisors'),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: tPrimaryColor,
            child: Icon(Icons.person_add),
            onPressed: () => Navigator.of(context)
                .pushNamed('/admin-supervisor-form')),
        body: AdminSupervisorList());
  }
}
