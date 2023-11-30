import 'package:flutter/material.dart';
import '../widgets/search_bar.dart';
import '../widgets/place_card.dart';
import '../widgets/header.dart';
import '../model/places.dart';

class ResultPage extends StatelessWidget {
  final String category;
  final List<Places> places;

  const ResultPage({Key? key, required this.category, required this.places})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    return Scaffold(
      appBar: HeaderWidget(title: category),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          children: [
            const SearchBarWidget(),
            const SizedBox(height: 20),
            for (Places place in places)
              Column(
                children: [
                  PopularPlacesCard(
                    place: place,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
