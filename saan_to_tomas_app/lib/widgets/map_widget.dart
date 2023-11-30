import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import '../widgets/directions_handler.dart';
import '../model/directions_model.dart';
import '../model/places.dart';

class MapScreen extends StatefulWidget {
  MapScreen({super.key, required this.place});
  Places place;
  @override
  State<MapScreen> createState() => _MapScreenState(place);
}

class _MapScreenState extends State<MapScreen> {
  _MapScreenState(this.place);
  Places place;

  late GoogleMapController _googleMapController;
  Directions _directions = Directions(
      bounds: LatLngBounds(
        northeast: const LatLng(14.6100, 120.9893),
        southwest: const LatLng(14.6100, 120.9893),
      ),
      polylinePoints: const [],
      totalDistance: '0',
      totalDuration: '0');

  static const _initialCameraPosition = CameraPosition(
      //TODO: gawing in between ng origin and destination yung cam pos
      target: LatLng(14.6100, 120.9893),
      zoom: 18);

  static final _origin = Marker(
      markerId: const MarkerId("origin"),
      infoWindow: const InfoWindow(title: 'Origin'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
      position: const LatLng(14.6100, 120.9893));

  void setDirection() async {
    final directions = await DirectionsHandler().getDirections(
        origin: _origin.position,
        destination: LatLng(place.latitude, place.longitude));
    setState(() => _directions = directions);
  }

  @override
  void initState() {
    super.initState();
    setDirection();
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
      child: Stack(children: [
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
        // TODO: Lipat time and distance to description
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
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: GoogleMap(
            zoomControlsEnabled: false,
            myLocationButtonEnabled: false,
            initialCameraPosition: _initialCameraPosition,
            onMapCreated: (controller) => _googleMapController = controller,
            markers: {
              _origin,
              Marker(
                  markerId: const MarkerId("destination"),
                  infoWindow: const InfoWindow(title: 'destination'),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed),
                  position: LatLng(place.latitude, place.longitude))
            },
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
      ]),
    );
  }
}
