import 'package:flutter/material.dart';
import 'package:project_manager/pages/admin_module/admin_project_manager_form/widgets/admin_project_manager_form.dart';

class AdminProjectManagerFormPage extends StatefulWidget {
  @override
  _AdminProjectManagerFormPageState createState() => _AdminProjectManagerFormPageState();
}

class _AdminProjectManagerFormPageState extends State<AdminProjectManagerFormPage> {

  AdminProjectManagerForm _adminProjectManagerForm;

  @override
  void initState() {
    _adminProjectManagerForm = AdminProjectManagerForm();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _adminProjectManagerForm,
    );
  }
}