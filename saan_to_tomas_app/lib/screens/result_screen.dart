import 'package:flutter/material.dart';
import 'package:saan_to_tomas_app/widgets/title_bar.dart';
import '../widgets/search_bar.dart';
import '../widgets/place_card.dart';
import '../widgets/header.dart';
import 'package:saan_to_tomas_app/model/places.dart';

class ResultPage extends StatelessWidget {
  final String category;
  final List<Places> places;

  const ResultPage({Key? key, required this.category, required this.places}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final String category = arguments?['title'] ?? '';
    return Scaffold(
      appBar: HeaderWidget(title: category),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 24),
        child: Column(
          children: [
            // TODO: ayusin title bar
            TitleBar(title: category),
            const SearchBarWidget(),
            const SizedBox(height: 30),
            for (Places place in places)
              Column(
                children: [
                  const SizedBox(height: 10),
                  PopularPlacesCard(place: place,),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
