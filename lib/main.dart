import 'package:flutter/material.dart';
import 'package:flutter_leaflet_map/pages/profile_page.dart';
import 'package:flutter_leaflet_map/pages/settings_page.dart';
import 'pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Map Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        ProfilePage.route: (context) => ProfilePage(),
        SettingsPage.route: (context) => SettingsPage(),
      },
    );
  }
}
