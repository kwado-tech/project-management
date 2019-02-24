import 'package:flutter/material.dart';
import 'package:project_manager/pages/admin_module/widgets/supervisor_form/admin_supervisor_form.dart';

class AdminSupervisorFormPage extends StatefulWidget {
  @override
  _AdminSupervisorFormStatePage createState() =>
      _AdminSupervisorFormStatePage();
}

class _AdminSupervisorFormStatePage extends State<AdminSupervisorFormPage> {
  AdminSupervisorForm _adminSupervisorForm;

  @override
  void initState() {
    _adminSupervisorForm = AdminSupervisorForm();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _adminSupervisorForm,
    );
  }
}
