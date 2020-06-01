import 'package:flutter/material.dart';
import 'package:flutter_leaflet_map/pages/profile_page.dart';
import 'package:flutter_leaflet_map/pages/settings_page.dart';

Drawer buildDrawer(BuildContext context, String currentRoute) {
  void basicDialog(context, title, text) => showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: Text(text),
      actions: <Widget>[
        FlatButton(
          onPressed: () => Navigator.pop(context),
          child: Text('OK'),
        ),
      ],
    ),
  );
  return Drawer(
    child: ListView(
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.green
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('assets/images/img1.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'Panda',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: const Text('Profile'),
          selected: currentRoute == ProfilePage.route,
          onTap: () {
            Navigator.pushNamed(context, ProfilePage.route);
          },
        ),
        ListTile(
          title: const Text('Settings'),
          selected: currentRoute == SettingsPage.route,
          onTap: () {
            Navigator.pushNamed(context, SettingsPage.route);
          },
        ),
        ListTile(
          title: const Text('Log Out'),
          selected: currentRoute == SettingsPage.route,
          onTap: () => basicDialog(context, 'Log Out', 'Confirm to logout from this app?'),
        ),
      ],
    ),
  );
}
