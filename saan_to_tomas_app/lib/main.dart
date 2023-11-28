import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:saan_to_tomas_app/directions_handler.dart';
import 'directions_model.dart';

void main() => runApp(const SaanToTomas());

class SaanToTomas extends StatelessWidget {
  const SaanToTomas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Final Academic Project',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(0xF5, 0xF5, 0xF5, 0xFF),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('SaanToTomas'),
        ),
        body: const SafeArea(
          child: MapPage(),
        ),
      ),
    );
  }
}

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  MapPageState createState() => MapPageState();
}

class MapPageState extends State<MapPage> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            height: 10,
            color: Colors.white,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Icon(
                      Icons.arrow_back
                  ),
                ),
                Expanded(
                    flex: 24,
                    child: Text("Angkong", textAlign: TextAlign.center,)
                )
              ],
            ),
          ),
        ),
        const MapScreen(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent
          ),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                      height: 400,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.white
                          ),
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                      ),
                      child: Column(
                        children: [
                          const Icon(
                            Icons.horizontal_rule_rounded,
                            color: Colors.blue,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text("Angkong Dimsum"),
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.all(Radius.circular(50))
                                  ),
                                  child: const Text("Restaurant")
                                )
                              ],
                            ),
                          ),
                          const Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.blue,
                                ),
                                Text("1241 Asturias St, Sampaloc, Manila, 1015 Metro Manila")
                              ],
                            ),
                          ),
                          const Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.view_headline,
                                  color: Colors.blue,
                                ),
                                Flexible(
                                  child: Text("Angkong Dimsum House, located on P. Noval street, sells a variety of different kinds of siomai:"
                                      "it has pork, chicken, quail, and Japanese siomai."
                                      " It also offers different kinds of dumplings, if you’re looking for something a little different.",
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                  );
                }
            );
          },
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.black
                ),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
            ),
            child: const Center(child: Icon(
              Icons.horizontal_rule_rounded,
              color: Colors.blue,
            )),
          ),
        )
      ],
    );
  }
}

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static const _initialCameraPosition = CameraPosition(
    //TODO: gawing in between ng origin and destination yung cam pos
      target: LatLng(14.6100, 120.9893),
      zoom: 18
  );

  late GoogleMapController _googleMapController;
  static final Marker _origin = Marker(
      markerId:  const MarkerId("origin"),
    infoWindow: const InfoWindow(title: 'Origin'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    position: const LatLng(14.6100, 120.9893)
  );
  static final Marker _destination = Marker(
      markerId:  const MarkerId("destination"),
      infoWindow: const InfoWindow(title: 'destination'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: const LatLng(14.611999503514589, 120.98737241591724)
  );
  late Directions _directions;


  void setDirection() async {
    final directions = await DirectionsHandler()
        .getDirections(origin: _origin.position, destination: _destination.position);
    setState(() => _directions = directions);
  }

  @override
  void initState() {
    // getPolyPoints();
    setDirection();
    super.initState();
  }

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 20,
        child: Stack(
          children: [
            GoogleMap(
              zoomControlsEnabled: false,
              myLocationButtonEnabled: false,
              initialCameraPosition: _initialCameraPosition,
              onMapCreated: (controller) => _googleMapController = controller,
              markers: {_origin, _destination},
              polylines: {
                Polyline(
                  polylineId: const PolylineId('overview_polyline'),
                  color: Colors.red,
                  width: 5,
                  points: _directions.polylinePoints
                      .map((e) => LatLng(e.latitude, e.longitude))
                      .toList(),
                ),
              },
            ),
            Positioned(
              bottom: 30,
              right: 20,
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                onPressed: () => _googleMapController.animateCamera(
                  CameraUpdate.newCameraPosition(_initialCameraPosition),
                ),
                child: const Icon(Icons.center_focus_strong),
              ),
            ),
            Positioned(
              top: 20.0,
              child: Draggable(
                feedback: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 6.0,
                    horizontal: 12.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 6.0,
                      )
                    ],
                  ),
                  child: Text(
                    '${_directions.totalDistance}, ${_directions.totalDuration}',
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 6.0,
                    horizontal: 12.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 6.0,
                      )
                    ],
                  ),
                  child: Text(
                    '${_directions.totalDistance}, ${_directions.totalDuration}',
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ]
        ),
    );
  }
}
