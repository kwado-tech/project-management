import 'package:flutter/material.dart';
import 'package:project_manager/theme/theme_colors.dart';

class SupervisorDetailsPage extends StatelessWidget {
  final List<String> _menuOptions = <String>[
    'Call',
    'Message',
    'View Profile',
  ];

  void _menuOptionActionCalBack(String option) {
    print(option);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            expandedHeight: 250.0,
            flexibleSpace:
                Image.asset('assets/images/temp4.jpg', fit: BoxFit.cover),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                // padding: EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Material(
                        elevation: 2.0,
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'John Doe',
                                    style: TextStyle(
                                        color: tTextColor,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  PopupMenuButton<String>(
                                    onSelected: _menuOptionActionCalBack,
                                    itemBuilder: (BuildContext context) {
                                      return _menuOptions.map((String option) {
                                        return PopupMenuItem<String>(
                                            child: Text(option));
                                      }).toList();
                                    },
                                  )
                                ],
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.location_on, color: tAccentColor),
                                  SizedBox(width: 5.0),
                                  Text(
                                    'Accra Metropolitian Area',
                                    softWrap: true,
                                    style: TextStyle(
                                        color: tTextColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.person, color: tAccentColor),
                                  SizedBox(width: 5.0),
                                  Text(
                                    '50 (workforce)',
                                    softWrap: true,
                                    style: TextStyle(
                                        color: tTextColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.done_all, color: tAccentColor),
                                  SizedBox(width: 5.0),
                                  Text(
                                    '30 of 70',
                                    softWrap: true,
                                    style: TextStyle(
                                        color: tTextColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Material(
                      elevation: 2.0,
                      child: Container(
                        // height: 140.0,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(
                                  top: 10.0, right: 20.0, left: 20.0),
                              child: Text(
                                'Recent Posts',
                                style: TextStyle(
                                    color: tTextColor,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Container(
                              height: 100.0,
                              child: ListView.builder(
                                itemCount: 9,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                physics: ClampingScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  return Row(
                                    children: <Widget>[
                                      SizedBox(width: 10.0),
                                      Column(
                                        children: <Widget>[
                                          Container(
                                            height: 80.0,
                                            width: 80.0,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(40.0),
                                                border: Border.all(
                                                    width: 2.0,
                                                    color: Colors.white)),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(40.0),
                                              child: FadeInImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'assets/images/temp$index.jpg'),
                                                placeholder: AssetImage(
                                                    'assets/loader/loader.gif'),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5.0),
                                          Expanded(
                                            child: Text('John Doe',
                                                style: TextStyle(
                                                    color: tTextColor,
                                                    fontWeight:
                                                        FontWeight.w900)),
                                          )
                                        ],
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Material(
                      elevation: 2.0,
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(
                                  top: 20.0, right: 20.0, left: 20.0),
                              child: Text(
                                'Staffs',
                                style: TextStyle(
                                    color: tTextColor,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                            Container(
                              height: 300.0,
                              child: ListView.builder(
                                itemCount: 9,
                                shrinkWrap: true,
                                physics: ClampingScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  return ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'assets/images/temp$index.jpg'),
                                    ),
                                    title: Text('Staff $index'),
                                    subtitle: Text('Staff $index details'),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(height: 20.0)
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
