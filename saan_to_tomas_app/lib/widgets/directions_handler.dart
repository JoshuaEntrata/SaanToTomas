import 'package:dio/dio.dart';
import 'package:saan_to_tomas_app/widgets/.env.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
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
      // Ensure the response data is of type Map<String, dynamic>
      Map<String, dynamic> responseData = response.data as Map<String, dynamic>;

      // Call Directions.fromMap with the responseData
      return Directions.fromMap(responseData);
    } else {
      // Handle the case where the response is not successful
      throw Exception('Failed to fetch directions');
    }
  }

}