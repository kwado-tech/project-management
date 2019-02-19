import 'package:flutter/material.dart';
import 'package:project_manager/theme/theme_colors.dart';

class AdminProjectManagerForm extends StatefulWidget {
  @override
  _AdminProjectManagerFormState createState() => _AdminProjectManagerFormState();
}

class _AdminProjectManagerFormState extends State<AdminProjectManagerForm> {
  List<String> _roles = [
    'Manager',
    'Supervisor',
  ];

  String _roleController;

  Widget _buildSliverAppbar() {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 300,
      flexibleSpace: Image.asset(
        'assets/placeholder/placeholder.png',
        fit: BoxFit.cover,
        height: double.infinity,
      ),
      automaticallyImplyLeading: false,
      leading: IconButton(
          iconSize: 30.0,
          color: tPrimaryColor,
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop()),
      actions: <Widget>[
        IconButton(
          iconSize: 30.0,
          color: tPrimaryColor,
          icon: Icon(Icons.add_a_photo),
          onPressed: () {
            print('Select Image');
          },
        )
      ],
    );
  }

  Widget _buildZonesDropDownField() {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        isExpanded: true,
        hint: Text('Select project-manager role',
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold)),
        items: _roles.map((String role) {
          return DropdownMenuItem<String>(
            value: role,
            child: Text(role,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold)),
          );
        }).toList(),
        value: _roleController,
        onChanged: (String value) {
          setState(() {
            _roleController = value;
          });
        },
      ),
    );
  }

  Widget _buildSurnameTextField() {
    return TextField(
      keyboardType: TextInputType.text,
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
        labelText: 'Surname',
        hintText: 'Enter surname',
        filled: true,
        fillColor: tTextFieldBackgroundColor,
      ),
    );
  }

  Widget _buildOthernamesTextField() {
    return TextField(
      keyboardType: TextInputType.text,
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
        labelText: 'Othername(s)',
        hintText: 'Enter othername(s)',
        filled: true,
        fillColor: tTextFieldBackgroundColor,
      ),
    );
  }

  Widget _buildPhoneTextField() {
    return TextField(
      keyboardType: TextInputType.phone,
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
        labelText: 'Phone',
        hintText: 'Enter contact phone',
        filled: true,
        fillColor: tTextFieldBackgroundColor,
      ),
    );
  }

  Widget _buildEmailTextField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Enter email',
        filled: true,
        fillColor: tTextFieldBackgroundColor,
      ),
    );
  }

  Widget _buildResidentialAddressTextField() {
    return TextField(
      keyboardType: TextInputType.multiline,
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
        labelText: 'Residential Address',
        hintText: 'Enter residential address',
        filled: true,
        fillColor: tTextFieldBackgroundColor,
      ),
    );
  }

  Widget _buildFormControl() {
    return InkWell(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Container(
        height: 50.0,
        width: 250.0,
        decoration: BoxDecoration(
          color: tAccentColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.all(10.0),
        child: Text('Save',
            style: TextStyle(
                color: tAccentButtonTextColor,
                fontSize: 20.0,
                fontWeight: FontWeight.w900)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget _buildCategoryLabel(
        {@required String labelText, bool sizedBox = true}) {
      return Column(
        children: <Widget>[
          sizedBox ? SizedBox(height: 20.0) : Container(),
          Text(labelText,
              style: TextStyle(
                  color: tTextColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
          Divider(),
        ],
      );
    }

    return CustomScrollView(
      slivers: <Widget>[
        _buildSliverAppbar(),
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  _buildCategoryLabel(labelText: 'Roles', sizedBox: false),
                  _buildZonesDropDownField(),
                  _buildCategoryLabel(labelText: 'Bio Details'),
                  _buildSurnameTextField(),
                  SizedBox(height: 20.0),
                  _buildOthernamesTextField(),
                  _buildCategoryLabel(labelText: 'Contact Details'),
                  _buildPhoneTextField(),
                  SizedBox(height: 20.0),
                  _buildEmailTextField(),
                  SizedBox(height: 20.0),
                  _buildResidentialAddressTextField(),
                  SizedBox(height: 30.0),
                  _buildFormControl()
                ],
              ),
            )
          ]),
        )
      ],
    );
  }
}