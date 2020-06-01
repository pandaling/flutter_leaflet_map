import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static const String route = 'profile';

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Name'),
            Text(
              'Panda',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20.0,),
            Text('Position'),
            Text(
              'Developer',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      )
    );
  }
}