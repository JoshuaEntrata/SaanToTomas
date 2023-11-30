import 'package:flutter/material.dart';
import 'package:saan_to_tomas_app/screens/maps_screen.dart';
import 'package:saan_to_tomas_app/screens/home_screen.dart';
import 'package:saan_to_tomas_app/screens/result_screen.dart';
// TODO: remove this import. for testing only
import 'package:saan_to_tomas_app/database/places_db_v2.dart';
import 'package:saan_to_tomas_app/model/places.dart';
final PlacesDB placesDB = PlacesDB();
final Places places = placesDB.getPlace();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Final Academic Project',
      initialRoute: '/',
      // routes: {
      //   '/': (context) => const HomePage(),
      //   '/map': (context) => const MapPage(),
      //   '/result': (context) => const ResultPage(
      //     category: '',
      //     places: [],
      //   ),
      // },
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            builder: (context) => const HomePage(),
          );
        } else if (settings.name == '/result') {
          final Map<String, dynamic>? args =
          settings.arguments as Map<String, dynamic>?;

          final category = args?['category'] ?? '';
          final places = args?['places'] ?? [];

          return MaterialPageRoute(
            builder: (context) => ResultPage(
              category: category,
              places: places,
            ),
          );
        }
        // Handle other routes if needed
        return null;
      },
    );
  }
}
