import 'package:flutter/material.dart';
import '../widgets/search_bar.dart';
import '../widgets/place_card.dart';
import '../widgets/header.dart';
import '../model/places.dart';

class ResultPage extends StatelessWidget {
  final String searchString;
  final List<Places> places;
  final String? category;

  const ResultPage({Key? key, required this.searchString, required this.places,
    this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    String title;
    if(category != null){
      title = category!;
    } else {
      title = searchString;
    }

    return Scaffold(
      appBar: HeaderWidget(title: title),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          children: [
            if (category == null) SearchBarWidget()
            else SearchBarWidget(category: category),
            const SizedBox(height: 20),
            if (places.isNotEmpty)
            for (Places place in places)
              Column(
                children: [
                  PopularPlacesCard(
                    place: place,
                  ),
                ],
              )
            else const Text("Sorry we do not have what you are looking for."),
          ],
        ),
      ),
    );
  }
}
