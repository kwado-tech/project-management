import 'package:flutter/material.dart';
import 'package:project_manager/theme/theme_colors.dart';
import 'package:project_manager/widgets/supervisors/supervisor_item.dart';

class SupervisorsPage extends StatelessWidget {
  Widget _buildSearchTextField() {
    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
      child: TextFormField(
        style: TextStyle(
            color: tTextColor, fontSize: 20.0, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            hintText: 'Search',
            hintStyle: TextStyle(
              color: tTextColor,
              fontWeight: FontWeight.bold,
            ),
            filled: true,
            // fillColor: tTextFieldBackgroundColor,
            prefixIcon: Icon(
              Icons.search,
              color: tTextColor,
            ),
            suffixIcon: Icon(
              Icons.mic,
              color: tTextColor,
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20.0))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 1.0,
          backgroundColor: tAppBarColor,
          title: Text(
            'Supervisors',
            style: TextStyle(color: tTextColor, fontWeight: FontWeight.w900),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: _buildSearchTextField(),
          ),
        ),
        body: Container(
          // padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: <Widget>[
              SupervisorItem(),
              SupervisorItem(),
              SupervisorItem(),
              SupervisorItem(),
              SupervisorItem(),
              SupervisorItem(),
            ],
          ),
        ),
      ),
    );
  }
}
