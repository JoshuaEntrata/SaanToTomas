import 'package:flutter/material.dart';
import '../widgets/search_bar.dart';
import '../widgets/categories.dart';
import '../widgets/place_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // const Header(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 24),
              color: const Color(0xFFFAFAFA),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SearchBarWidget(),
                  SizedBox(height: 30),

                  Categories(),

                  SizedBox(height: 30),

                  // Popular Places
                  const Text(
                    'Popular Places',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Epilogue'),
                  ),

                  SizedBox(height: 20),

                  for (int i = 0; i < 5; i++) PopularPlacesCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
