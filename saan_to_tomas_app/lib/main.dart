import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/result_screen.dart';
import '../database/places_db_v2.dart';
import '../model/places.dart';
import '../screens/splash_screen.dart';

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
      home: SplashScreen(),
      onGenerateRoute: (settings) {
        if (settings.name == '/home') {
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
        return null;
      },
    );
  }
}
