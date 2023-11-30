import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../widgets/.env.dart';
import '../model/directions_model.dart';

class DirectionsHandler {
  static const String _baseUrl =
      'https://maps.googleapis.com/maps/api/directions/json?';

  final Dio _dio;

  DirectionsHandler({Dio? dio}) : _dio = dio ?? Dio();

  Future<Directions> getDirections({
    required LatLng origin,
    required LatLng destination,
  }) async {
    final response = await _dio.get(
      _baseUrl,
      queryParameters: {
        'origin': '${origin.latitude},${origin.longitude}',
        'destination': '${destination.latitude},${destination.longitude}',
        'mode': 'walking',
        'key': googleAPIKey,
      },
    );
    // return Directions.fromMap(response.data);
    if (response.statusCode == 200) {
      Map<String, dynamic> responseData = response.data as Map<String, dynamic>;

      return Directions.fromMap(responseData);
    } else {
      throw Exception('Failed to fetch directions');
    }
  }
}
