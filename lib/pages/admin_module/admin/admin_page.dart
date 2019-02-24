import 'package:flutter/material.dart';
import 'package:project_manager/pages/admin_module/admin/widgets/admin_list.dart';
import 'package:project_manager/theme/theme_colors.dart';

class AdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Administrators'),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: tPrimaryColor,
            child: Icon(Icons.person_add),
            onPressed: () => Navigator.of(context).pushNamed('/admin-form')),
        body: AdminList());
  }
}
