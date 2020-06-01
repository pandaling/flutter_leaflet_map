import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  static const String route = 'settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings')
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Language'),
            Text(
              'English',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20.0,),
            Text('Notification'),
            Text(
              'Off',
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