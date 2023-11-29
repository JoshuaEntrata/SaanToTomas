import 'package:flutter/material.dart';
import 'package:saan_to_tomas_app/database/places_db_v2.dart';
import 'package:saan_to_tomas_app/model/places.dart';

final PlacesDB placesDB = PlacesDB();
final Places places = placesDB.getPlace();
final _formKey = GlobalKey<FormState>();
String? value;

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  //TODO: Make this functional
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        border: Border.all(color: const Color(0xFF00529B)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          TextButton(
            onPressed: () {
              List<Places> places =  placesDB.search(value!);
              Navigator.of(context).pushReplacementNamed('/result', arguments: {
                'places': places, 'category': value!,
              });
              // Navigator.pushReplacementNamed(context, '/map');
            },
            child: const Icon(Icons.search, color: Color(0xFF00529B)),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              onChanged: (text) {
                value = text;
              },
              onSubmitted: (text) {
                value = text;
                List<Places> places =  placesDB.search(value!);
                Navigator.of(context).pushReplacementNamed('/result', arguments: {
                  'places': places, 'category': value!,
                });
              },
              style: const TextStyle(
                fontFamily: 'Epilogue',
                color: Color(0xFF00529B),
                fontSize: 16.0,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Where do you want to go?',
                hintStyle: TextStyle(
                  fontFamily: 'Epilogue',
                  color: Color(0xFF00529B),
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
