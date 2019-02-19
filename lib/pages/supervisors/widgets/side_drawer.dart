import 'package:flutter/material.dart';
import 'package:project_manager/theme/theme_colors.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              AppBar(
                elevation: 0.0,
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
                title: Text(
                  'MENU',
                  style: TextStyle(
                      color: tTextColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900),
                ),
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(60.0),
                  child: Image.asset(
                    'assets/images/temp4.jpg',
                    fit: BoxFit.cover,
                    height: 120.0,
                    width: 120.0,
                  )),
              SizedBox(height: 20.0),
              Text('example@gmail.com',
                  style: TextStyle(
                      color: tTextColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold)),
              FlatButton(
                child: Text(
                  'View Profile',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
              Divider(height: 20.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: tBackgroundColor,
                          child: Icon(Icons.store_mall_directory,
                              color: Theme.of(context).primaryColor)),
                      title: Text(
                        'Zones',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () =>
                          Navigator.of(context).pushNamed('/admin-zones'),
                    ),
                    Divider(height: 20.0),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: tBackgroundColor,
                          child: Icon(Icons.account_circle,
                              color: Theme.of(context).primaryColor)),
                      title: Text(
                        'Project Managers',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () => Navigator.of(context)
                          .pushNamed('/admin-project-managers'),
                    ),
                    Divider(height: 20.0),
                    ListTile(
                      onTap: () =>
                          Navigator.of(context).pushNamed('/admin-supervisors'),
                      leading: CircleAvatar(
                          backgroundColor: tBackgroundColor,
                          child: Icon(Icons.supervisor_account,
                              color: Theme.of(context).primaryColor)),
                      title: Text(
                        'Supervisors',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: tBackgroundColor,
                          child: Icon(Icons.people,
                              color: Theme.of(context).primaryColor)),
                      title: Text(
                        'Staffs',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(height: 20.0),
                    ListTile(
                      onTap: () {},
                      leading: CircleAvatar(
                          backgroundColor: tBackgroundColor,
                          child: Icon(Icons.exit_to_app,
                              color: Theme.of(context).primaryColor)),
                      title: Text(
                        'Signout',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
