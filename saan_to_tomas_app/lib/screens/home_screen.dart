import 'package:flutter/material.dart';
import '../widgets/search_bar.dart';
import '../widgets/categories.dart';
import '../widgets/place_card.dart';
import '../widgets/header.dart';
import '../model/places.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<String> specificPlaces = [
      "Angkong Dimsum House",
      "Anytime Fitness University Belt",
      "933 Creatives",
      "Manila Cafe",
      "UST Museum",
    ];

    List<Places> placesList = specificPlaces.map((placeName) {
      return placesDB.getPlaceByName(placeName);
    }).toList();

    return Scaffold(
      appBar: const HeaderWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              color: const Color(0xFFFAFAFA),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SearchBarWidget(),
                  const SizedBox(height: 20),
                  const Categories(),
                  const SizedBox(height: 20),
                  const Text(
                    'Popular Places',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Epilogue',
                      color: Color(0xFF00529B),
                    ),
                  ),
                  const SizedBox(height: 10),
                  for (Places place in placesList)
                    PopularPlacesCard(
                      place: place,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
