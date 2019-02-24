import 'package:flutter/material.dart';
import 'package:project_manager/theme/theme_colors.dart';

class SupervisorItem extends StatelessWidget {
  final Function hideKeyPad;

  const SupervisorItem({Key key, @required this.hideKeyPad}) : super(key: key);

  Widget _buildSupervisorImage() {
    return Stack(
      children: <Widget>[
        Container(
            height: 150.0,
            width: 150.0,
            decoration: BoxDecoration(
                color: tContainer1Color,
                borderRadius: BorderRadius.circular(50.0))),
        Positioned(
          top: 5.0,
          left: 5.0,
          child: Container(
              height: 140.0,
              width: 140.0,
              decoration: BoxDecoration(
                  color: tContainer2Color,
                  borderRadius: BorderRadius.circular(70.0))),
        ),
        Positioned(
          top: 15.0,
          left: 15.0,
          child: CircleAvatar(
            radius: 60.0,
            backgroundImage: AssetImage('assets/images/temp2.jpg'),
            // backgroundImage: NetworkImage(product.imageUrl),
          ),
        )
      ],
    );
  }

  Widget _buildTitleRow() {
    return Text('John Doe',
        style: TextStyle(
            color: tTextColor, fontSize: 20.0, fontWeight: FontWeight.w900));
  }

  Widget _buildLocationRow() {
    return Row(
      children: <Widget>[
        Icon(Icons.location_on, color: tAccentColor),
        SizedBox(width: 5.0),
        Text(
          'Accra Metropolitian Area',
          softWrap: true,
          style: TextStyle(color: tTextColor, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildTeamCountRow() {
    return Row(
      children: <Widget>[
        Icon(Icons.person, color: tAccentColor),
        SizedBox(width: 5.0),
        Text(
          '50 (staff count)',
          softWrap: true,
          style: TextStyle(color: tTextColor, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildProgressScoreRow() {
    return Row(
      children: <Widget>[
        Icon(Icons.history, color: tAccentColor),
        SizedBox(width: 5.0),
        Text(
          '30 of 70',
          softWrap: true,
          style: TextStyle(color: tTextColor, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildActionButtonsRow(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          iconSize: 30.0,
          icon: Icon(
            Icons.chat_bubble_outline,
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
            hideKeyPad();
            Navigator.of(context).pushNamed('/supervisor-details');
          },
        ),
      ],
    );
  }

  Widget _buildProductDetails({@required BuildContext context}) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 10.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildTitleRow(),
            SizedBox(height: 20.0),
            _buildProgressScoreRow(),
            _buildTeamCountRow(),
            Divider(),
            _buildLocationRow(),
            _buildActionButtonsRow(context),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20.0),
        Material(
          elevation: 1.0,
          child: Container(
            color: tCardColor,
            padding: EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
            // padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildSupervisorImage(),
                _buildProductDetails(context: context)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
