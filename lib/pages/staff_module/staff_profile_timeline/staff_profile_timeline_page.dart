import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_manager/theme/theme_colors.dart';

class StaffProfileTimeline extends StatelessWidget {
  final List<String> _menuOptions = <String>[
    'Call',
    'Message',
  ];

  void _menuOptionActionCalBack(String option) {
    print(option);
  }

  Widget _buildPostTitleTextField() {
    return TextField(
      keyboardType: TextInputType.text,
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
        labelText: 'Title',
        hintText: 'Enter title',
        filled: true,
        fillColor: tTextFieldBackgroundColor,
      ),
    );
  }

  Widget _buildPostDescriptionTextField() {
    return TextField(
      keyboardType: TextInputType.text,
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
        labelText: 'Description',
        hintText: 'Enter description',
        filled: true,
        fillColor: tTextFieldBackgroundColor,
      ),
    );
  }

  Future _openPostDialog(BuildContext context) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Stack(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    // FocusScope.of(context).requestFocus(FocusNode());
                    print('Add Photo');
                  },
                  child: Container(
                    height: 400.0,
                    width: 400.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/temp1.jpg'))),
                    // 'assets/placeholder/placeholder.png'))),
                  ),
                ),
                Positioned(
                  top: 130.0,
                  left: 20.0,
                  right: 20.0,
                  bottom: 20.0,
                  child: Card(
                    child: Container(
                      width: 300.0,
                      height: 200.0,
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            _buildPostTitleTextField(),
                            SizedBox(height: 20.0),
                            _buildPostDescriptionTextField(),
                            ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: <Widget>[
                                FlatButton(
                                  child: Text('Cancel'),
                                  onPressed: () => Navigator.of(context).pop(),
                                ),
                                RaisedButton(
                                  child: Text('Post'),
                                  onPressed: () => Navigator.of(context).pop(),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: tPrimaryColor,
            child: Icon(Icons.add_comment),
            onPressed: () => _openPostDialog(context)),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              snap: true,
              floating: true,
              expandedHeight: 250.0,
              flexibleSpace:
                  Image.asset('assets/images/temp4.jpg', fit: BoxFit.cover),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.message),
                  onPressed: () {},
                )
              ],
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
                                      'Johanna Doe',
                                      style: TextStyle(
                                          color: tTextColor,
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    PopupMenuButton<String>(
                                      onSelected: _menuOptionActionCalBack,
                                      itemBuilder: (BuildContext context) {
                                        return _menuOptions
                                            .map((String option) {
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
                                    Icon(Icons.location_on,
                                        color: tAccentColor),
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
                                    Icon(Icons.supervisor_account,
                                        color: tAccentColor),
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
                                      '30 units',
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
                        // elevation: 2.0,
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
                                height: 160.0,
                                child: ListView.builder(
                                  itemCount: 9,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  physics: ClampingScrollPhysics(),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Row(
                                      children: <Widget>[
                                        SizedBox(width: 10.0),
                                        Card(
                                          child: Container(
                                            height: 150.0,
                                            width: 150.0,
                                            child: Column(
                                              children: <Widget>[
                                                FadeInImage(
                                                  height: 120.0,
                                                  width: 150.0,
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      'assets/images/temp$index.jpg'),
                                                  placeholder: AssetImage(
                                                      'assets/loader/loader.gif'),
                                                ),
                                                SizedBox(height: 5.0),
                                                Expanded(
                                                  child: Text('Johanna Doe',
                                                      style: TextStyle(
                                                          color: tTextColor,
                                                          fontWeight:
                                                              FontWeight.w900)),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // SizedBox(height: 20.0),
                      Material(
                        elevation: 2.0,
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(
                                    top: 20.0,
                                    right: 20.0,
                                    left: 20.0,
                                    bottom: 20.0),
                                child: Text(
                                  'Timeline',
                                  style: TextStyle(
                                      color: tTextColor,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              Container(
                                height: 350.0,
                                child: ListView.builder(
                                  itemCount: 9,
                                  shrinkWrap: true,
                                  physics: ClampingScrollPhysics(),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      margin: EdgeInsets.all(20.0),
                                      child: Card(
                                        child: Container(
                                          height: 410.0,
                                          width: 300.0,
                                          child: Column(
                                            children: <Widget>[
                                              ListTile(
                                                onTap: () {},
                                                leading: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                  child: Container(
                                                    height: 50.0,
                                                    width: 50.0,
                                                    child: FadeInImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                          'assets/images/temp$index.jpg'),
                                                      placeholder: AssetImage(
                                                          'assets/loader/loader.gif'),
                                                    ),
                                                  ),
                                                ),
                                                title: Text(
                                                  'Onwe Christian',
                                                  style: TextStyle(
                                                      color: tPrimaryColor,
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                subtitle: Text(
                                                    'General Manager / Supervisor'),
                                              ),
                                              FadeInImage(
                                                height: 250.0,
                                                // width: 300.0,
                                                fit: BoxFit.fitWidth,
                                                image: AssetImage(
                                                    'assets/images/temp$index.jpg'),
                                                placeholder: AssetImage(
                                                    'assets/loader/loader.gif'),
                                              ),
                                              // SizedBox(height: 5.0),
                                              ButtonBar(
                                                alignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  IconButton(
                                                    iconSize: 30.0,
                                                    icon: Icon(
                                                      Icons.favorite,
                                                      color: tAccentColor,
                                                    ),
                                                    onPressed: () {},
                                                  ),
                                                  IconButton(
                                                    iconSize: 30.0,
                                                    icon: Icon(
                                                      Icons.info_outline,
                                                      color: tPrimaryColor,
                                                    ),
                                                    onPressed: () {
                                                      // hideKeyPad();
                                                      Navigator.of(context)
                                                          .pushNamed(
                                                              '/supervisor-details');
                                                    },
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                    // return ListTile(
                                    //   leading: CircleAvatar(
                                    //     backgroundImage: AssetImage(
                                    //         'assets/images/temp$index.jpg'),
                                    //   ),
                                    //   title: Text('Staff $index'),
                                    //   subtitle: Text('Staff $index details'),
                                    // );
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
      ),
    );
  }
}
