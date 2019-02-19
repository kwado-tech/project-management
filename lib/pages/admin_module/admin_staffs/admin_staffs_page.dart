import 'package:flutter/material.dart';
import 'package:project_manager/pages/admin_module/admin_staffs/widgets/admin_staff_list.dart';
import 'package:project_manager/theme/theme_colors.dart';

class AdminStaffsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Staffs')),
      floatingActionButton: FloatingActionButton(
          backgroundColor: tPrimaryColor,
          child: Icon(Icons.person_add),
          onPressed: () =>
              Navigator.of(context).pushNamed('/admin-supervisor-form')),
      body: AdminStaffList(),
    );
  }
}
