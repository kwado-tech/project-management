import 'package:flutter/material.dart';
import 'package:project_manager/pages/admin_module/admin_staff_form/widgets/admin_staff_form.dart';

class AdminStaffFormPage extends StatefulWidget {
  @override
  _AdminStaffFormPageState createState() => _AdminStaffFormPageState();
}

class _AdminStaffFormPageState extends State<AdminStaffFormPage> {
  AdminStaffForm _adminStaffForm;

  @override
  void initState() {
    _adminStaffForm = AdminStaffForm();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _adminStaffForm,
    );
  }
}
