import 'package:flutter/material.dart';
import 'package:project_manager/pages/admin_module/admin_project_managers/widgets/admin_project_manager_list.dart';
import 'package:project_manager/theme/theme_colors.dart';

class AdminProjectManagersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Managers'),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: tPrimaryColor,
          child: Icon(Icons.person_add),
          onPressed: () =>
              Navigator.of(context).pushNamed('/admin-project-manager-form')),
      body: AdminProjectManagerList(),
    );
  }
}
