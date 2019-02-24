import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_manager/pages/admin_module/widgets/admin_zones/admin_zone_list.dart';
import 'package:project_manager/theme/theme_colors.dart';

class AdminZonesPage extends StatefulWidget {
  @override
  _AdminZonesPageState createState() => _AdminZonesPageState();
}

class _AdminZonesPageState extends State<AdminZonesPage> {
  void _buildHideKeyPad() {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  Future _buildZoneFormDialog() {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return GestureDetector(
            onTap: () => _buildHideKeyPad(),
            child: AlertDialog(
              title: Text('Add Zone'),
              content: Container(
                height: 150.0,
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Zone Name',
                          prefixIcon: Icon(Icons.store_mall_directory)),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Total Units',
                          prefixIcon: Icon(Icons.queue_play_next)),
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                FlatButton(
                    textColor: tPrimaryColor,
                    child: Text('Cancel'),
                    onPressed: () => Navigator.of(context).pop()),
                RaisedButton(
                    color: tPrimaryColor,
                    textColor: Colors.white,
                    child: Text('Save'),
                    onPressed: () => Navigator.of(context).pop())
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Zones'),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: tPrimaryColor,
            child: Icon(Icons.add_location),
            onPressed: _buildZoneFormDialog),
        body: AdminZoneList());
  }
}
