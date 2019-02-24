import 'package:flutter/material.dart';
import 'package:project_manager/pages/admin_module/admin_form/widgets/admin_form.dart';

class AdminFormPage extends StatefulWidget {
  @override
  _AdminFormPageState createState() => _AdminFormPageState();
}

class _AdminFormPageState extends State<AdminFormPage> {
  AdminForm _adminForm;

  @override
  void initState() {
    _adminForm = AdminForm();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _adminForm,
    );
  }
}
