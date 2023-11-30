import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/map_widget.dart';
import '../widgets/description_card.dart';
import '../model/places.dart';

class MapPage extends StatefulWidget {
  MapPage({super.key, required this.place});

  Places place;

  @override
  MapPageState createState() => MapPageState(place);
}

class MapPageState extends State<MapPage> {
  MapPageState(this.place);
  Places place;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderWidget(title: place.name),
      body: SizedBox.expand(
        child: Stack(
          children: <Widget>[
            MapScreen(place: place),
            // Positioned(
            //   left: 0,
            //   right: 0,
            //   bottom: 0,
            //   child: Align(
            //     alignment: Alignment.bottomCenter,
            //     child: DescriptionCard(place: place),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
