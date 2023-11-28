import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:saan_to_tomas_app/widgets/directions_handler.dart';
import '../model/directions_model.dart';
import 'package:saan_to_tomas_app/widgets/description_card.dart';
import 'package:saan_to_tomas_app/widgets/title_bar.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  MapPageState createState() => MapPageState();
}

class MapPageState extends State<MapPage> {

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TitleBar(),
        MapScreen(),
        DescriptionCard(),
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
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: GoogleMap(
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
              top: 20,
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
          ]
      ),
    );
  }
}
