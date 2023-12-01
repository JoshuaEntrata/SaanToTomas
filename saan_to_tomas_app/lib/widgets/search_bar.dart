import 'package:flutter/material.dart';
import '../database/places_db_v2.dart';
import '../model/places.dart';

final PlacesDB placesDB = PlacesDB();
final Places places = placesDB.getPlace();
final _formKey = GlobalKey<FormState>();
String? value;


class SearchBarWidget extends StatelessWidget {
  SearchBarWidget({Key? key, this.category}) : super(key: key);
  String? category;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white,
        border: Border.all(color: const Color(0xFF00529B)),
      ),
      child: Row(
        children: [
          TextButton(
            onPressed: () {
              if (category != null) {
                List<Places> places = placesDB.categorySearch(value!, category!);
                Navigator.of(context).pushReplacementNamed('/result', arguments: {
                  'places': places,
                  'category': category,
                  'searchString': value
                });
              }
              else {
                List<Places> places = placesDB.search(value!);
                Navigator.of(context).pushReplacementNamed('/result', arguments: {
                  'places': places,
                  'searchString': "Results",
                });
              }
            },
            child: const Icon(Icons.search, color: Color(0xFF00529B), size: 20),
          ),
          Expanded(
            child: TextField(
              onChanged: (text) {
                value = text;
              },
              onSubmitted: (text) {
                value = text;
                if (category != null) {
                  List<Places> places = placesDB.categorySearch(value!, category!);
                  Navigator.of(context).pushReplacementNamed('/result', arguments: {
                    'places': places,
                    'category': category,
                    'searchString': value
                  });
                }
                else {
                  List<Places> places = placesDB.search(value!);
                  Navigator.of(context).pushReplacementNamed('/result', arguments: {
                    'places': places,
                    'searchString': "Results",
                  });
                }
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
