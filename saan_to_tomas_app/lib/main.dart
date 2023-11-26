import 'package:flutter/material.dart';

void main() => runApp(const SaanToTomas());

class SaanToTomas extends StatelessWidget {
  const SaanToTomas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Final Academic Project',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(0xF5, 0xF5, 0xF5, 0xFF),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('SaanToTomas'),
        ),
        body: const SafeArea(
          child: MapPage(),
        ),
      ),
    );
  }
}

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  MapPageState createState() => MapPageState();
}

class MapPageState extends State<MapPage> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              height: 10,
              color: Colors.white,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: Icon(
                      Icons.arrow_back
                    ),
                  ),
                  Expanded(
                      flex: 15,
                      child: Text("Location", textAlign: TextAlign.center,)
                  )
                ],
              ),
            ),
          ),
          const Expanded(
              flex: 8,
              child: Text("data")
          ),
        ],
      ),
    );
  }
}
