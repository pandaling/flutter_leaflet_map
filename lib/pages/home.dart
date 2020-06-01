import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:user_location/user_location.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  static const String route = '/';
  static LatLng myLoc = LatLng(3.070932, 101.690918);
  final MapController mapController = MapController();
  final List<Marker> markers = [];

  @override
  Widget build(BuildContext context) {
    var markers = <Marker>[
      Marker(
        width: 30.0,
        height: 30.0,
        point: myLoc,
        builder: (ctx) => Container(
          child: new FlutterLogo(
            key: Key('red'),
            colors: Colors.red,
          ),
        ),
      ),
    ];

    var points = <LatLng>[
      LatLng(3.070869, 101.691008),
      LatLng(3.070408, 101.690680),
      LatLng(3.070349, 101.690761),
      LatLng(3.071126, 101.691265),
      LatLng(3.071099, 101.691496),
      LatLng(3.071254, 101.691506),
    ];

    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      drawer: buildDrawer(context, route),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Text('This is a map that is showing (3.070932, 101.690918).'),
            ),
            Flexible(
              child: FlutterMap(
                options: MapOptions(
                  center: myLoc,
                  zoom: 17.0,
                  plugins: [
                  // ADD THIS
                    UserLocationPlugin(),
                  ],
                ),
                layers: [
                  TileLayerOptions(
                    urlTemplate: 'http://a.basemaps.cartocdn.com/light_all/{z}/{x}/{y}.png',
                  ),
                  MarkerLayerOptions(markers: markers),
                  PolylineLayerOptions(
                    polylines: [
                      Polyline(
                          points: points,
                          strokeWidth: 4.0,
                          color: Colors.green),
                    ],
                  ),
                  UserLocationOptions(
                    context: context,
                    mapController: mapController,
                    markers: markers,
                    onLocationUpdate: (LatLng pos) =>
                        debugPrint("onLocationUpdate ${pos.toString()}"),
                    updateMapLocationOnPositionChange: false, // if true, will auto center the user location even when you are scrolling the map
                    showMoveToCurrentLocationFloatingActionButton: true,
                    verbose: false),
                ],
                mapController: mapController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
