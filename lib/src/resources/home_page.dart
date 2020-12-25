import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mynote/src/resources/widgets/ride_picker.dart';
import 'package:mynote/src/resources/widgets/home_menu.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//       constraints: BoxConstraints.expand(),
//       color: Colors.white,
//       child: Center(child: Text("Home Page")),
//     ));
//   }
// }
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(21.0719648, 105.7717246),
                zoom: 14.4746,
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: Column(
                children: <Widget>[
                  AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    title: Text(
                      "Demo App",
                      style: TextStyle(color: Colors.black),
                    ),
                    leading: FlatButton(
                        onPressed: () {
                          print("click menu");
                          Scaffold.of(context).openDrawer();
                        },
                        child: Image.asset("ic_menu.png")),
                    actions: <Widget>[Image.asset("ic_notify.png")],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: RidePicker(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: HomeMenu(),
      ),
    );
  }
}
