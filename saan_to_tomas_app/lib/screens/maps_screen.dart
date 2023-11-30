import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:saan_to_tomas_app/widgets/directions_handler.dart';
import '../model/directions_model.dart';
import 'package:saan_to_tomas_app/widgets/description_card.dart';
import 'package:saan_to_tomas_app/model/places.dart';
import 'package:saan_to_tomas_app/database/places_db_v2.dart';
import '../widgets/header.dart';
import 'package:saan_to_tomas_app/widgets/map_widget.dart';

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
    // TODO: implement initState
    super.initState();
    // setState(() {
    //   globalPlace = place;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: ayusin appbar kasi masyadong natataas
      appBar: HeaderWidget(title: place.name),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // TitleBar(),
          MapScreen(place: place),
          DescriptionCard(place: place,),
        ],
      ),
    );
  }
}


