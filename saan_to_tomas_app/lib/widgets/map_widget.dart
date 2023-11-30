import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import '../widgets/directions_handler.dart';
import '../model/directions_model.dart';
import '../model/places.dart';
import '../widgets/description_card.dart';

class MapScreen extends StatefulWidget {
  MapScreen({super.key, required this.place});
  final Places place;

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController _googleMapController;
  late Directions _directions;
  late Marker _origin;

  static const _initialCameraPosition =
      CameraPosition(target: LatLng(14.6100, 120.9893), zoom: 18);

  void setDirection() async {
    final origin = Marker(
      markerId: const MarkerId("origin"),
      infoWindow: const InfoWindow(title: 'Origin'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
      position: const LatLng(14.6100, 120.9893),
    );

    final directions = await DirectionsHandler().getDirections(
      origin: origin.position,
      destination: LatLng(widget.place.latitude, widget.place.longitude),
    );

    setState(() {
      _origin = origin;
      _directions = directions;
    });
  }

  @override
  void initState() {
    super.initState();
    _origin = Marker(
      markerId: const MarkerId("origin"),
      infoWindow: const InfoWindow(title: 'Origin'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
      position: const LatLng(14.6100, 120.9893),
    );
    _directions = Directions(
      bounds: LatLngBounds(
        northeast: const LatLng(14.6100, 120.9893),
        southwest: const LatLng(14.6100, 120.9893),
      ),
      polylinePoints: const [],
      totalDistance: '0',
      totalDuration: '0',
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      setDirection();
    });
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
              markers: {
                if (_origin != null) _origin,
                Marker(
                  markerId: const MarkerId("destination"),
                  infoWindow: const InfoWindow(title: 'destination'),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                    BitmapDescriptor.hueRed,
                  ),
                  position: LatLng(
                    widget.place.latitude,
                    widget.place.longitude,
                  ),
                ),
              },
              polylines: {
                Polyline(
                  polylineId: const PolylineId('overview_polyline'),
                  color: Colors.blue,
                  width: 15,
                  points: _directions.polylinePoints
                      .map(
                        (e) => LatLng(e.latitude, e.longitude),
                      )
                      .toList(),
                ),
              },
            ),
          ),
          Positioned(
            bottom: 80,
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
            left: 0,
            right: 0,
            bottom: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: DescriptionCard(
                place: widget.place,
                distance: _directions.totalDistance,
                duration: _directions.totalDuration,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
