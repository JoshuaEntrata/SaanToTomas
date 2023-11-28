import 'package:flutter/material.dart';
import 'package:saan_to_tomas_app/screens/maps_screen.dart';
import 'screens/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Final Academic Project',
      // home: HomeScreen(),
      home: Scaffold(
        // backgroundColor: const Color.fromARGB(0xF5, 0xF5, 0xF5, 0xFF),
        appBar: AppBar(
          backgroundColor: const Color(0xFFD3D3D3),
          title: Center(
            child: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: const [
                  TextSpan(
                    text: 'Saan',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Epilogue',
                    ),
                  ),
                  TextSpan(
                    text: 'ToTomas',
                    style: TextStyle(
                      color: Color(0xFFffd100),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Epilogue',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const SafeArea(
          child: HomePage(),
        ),
      ),
    );
  }
}
