import 'package:flutter/material.dart';
import 'package:project_manager/pages/zones/widgets/zone_list.dart';
import 'package:project_manager/theme/theme_colors.dart';

class ZonesPage extends StatefulWidget {
  @override
  _ZonesPageState createState() => _ZonesPageState();
}

class _ZonesPageState extends State<ZonesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Zones'),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: tPrimaryColor,
          child: Icon(Icons.add_location),
          onPressed: () {},
        ),
        body: ZoneList());
  }
}
