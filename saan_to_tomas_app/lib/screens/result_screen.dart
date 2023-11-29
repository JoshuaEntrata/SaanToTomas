import 'package:flutter/material.dart';
import '../widgets/search_bar.dart';
import '../widgets/place_card.dart';
import '../widgets/header.dart';

class ResultPage extends StatelessWidget {
  final String category;

  const ResultPage({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final String category = arguments?['title'] ?? '';
    return Scaffold(
      appBar: HeaderWidget(title: category),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 36, vertical: 24),
        child: Column(
          children: [
            SearchBarWidget(),
            SizedBox(height: 30),
            PopularPlacesCard(),
            SizedBox(height: 10),
            PopularPlacesCard(),
            SizedBox(height: 10),
            PopularPlacesCard(),
            SizedBox(height: 10),
            PopularPlacesCard(),
            SizedBox(height: 10),
            PopularPlacesCard(),
          ],
        ),
      ),
    );
  }
}
