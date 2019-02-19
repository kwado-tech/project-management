import 'package:flutter/material.dart';
import 'package:project_manager/theme/theme_colors.dart';

class AdminZoneList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {},
            leading: CircleAvatar(
                backgroundColor: tBackgroundColor,
                child: Icon(Icons.store_mall_directory,
                    color: tPrimaryColor)),
            title: Text(
              'Accra',
              style: TextStyle(
                  color: tPrimaryColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Onwe Christian'),
          );
        },
      );
  }
}