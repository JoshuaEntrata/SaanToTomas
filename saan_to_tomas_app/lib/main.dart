import 'package:flutter/material.dart';
import 'package:saan_to_tomas_app/screens/maps_screen.dart';
import 'package:saan_to_tomas_app/screens/home_screen.dart';
import 'package:saan_to_tomas_app/screens/result_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Final Academic Project',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/map': (context) => MapPage(),
        '/result': (context) => ResultPage(
              category: '',
            ),
      },
    );
  }
}
