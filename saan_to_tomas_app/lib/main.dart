import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/result_screen.dart';
// TODO: remove this import. for testing only
import '../database/places_db_v2.dart';
import '../model/places.dart';

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
