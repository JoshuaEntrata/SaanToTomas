import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/result_screen.dart';
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
      debugShowCheckedModeBanner: false,
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

          final searchString = args?['searchString'] ?? '';
          final places = args?['places'] ?? [];
          String category = args?['category'] ?? '';

          return MaterialPageRoute(
            builder: (context) => ResultPage(
              searchString: searchString,
              places: places,
              category: category,
            ),
          );
        }
        // Handle other routes if needed
        return null;
      },
    );
  }
}
