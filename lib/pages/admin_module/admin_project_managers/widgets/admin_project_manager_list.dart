import 'package:flutter/material.dart';
import 'package:project_manager/theme/theme_colors.dart';

class AdminProjectManagerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          onTap: () {},
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Container(
              height: 50.0,
              width: 50.0,
              child: FadeInImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/temp$index.jpg'),
                placeholder: AssetImage('assets/loader/loader.gif'),
              ),
            ),
          ),
          title: Text(
            'Onwe Christian',
            style: TextStyle(
                color: tPrimaryColor,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
          subtitle: Text('General Manager / Supervisor'),
        );
      },
    );
  }
}
