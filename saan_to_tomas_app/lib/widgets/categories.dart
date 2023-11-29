import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saan_to_tomas_app/database/places_db_v2.dart';
import 'package:saan_to_tomas_app/model/places.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildCategoryItem(context, 'Restaurant', 'CustomRestaurant'),
            buildCategoryItem(context, 'Gym', 'CustomGym'),
            buildCategoryItem(context, 'Study Hub', 'CustomStudyHub'),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildCategoryItem(context, 'Coffee', 'CustomCoffee'),
            buildCategoryItem(context, 'Store', 'CustomStore'),
            buildCategoryItem(context, 'Museum', 'CustomMuseum'),
          ],
        ),
      ],
    );
  }

  Widget buildCategoryItem(
      BuildContext context, String title, String iconName) {
    return GestureDetector(
      onTap: () {
        final PlacesDB placesDB = PlacesDB();
        List<Places> places =  placesDB.getCategoryList(title);
        Navigator.of(context).pushReplacementNamed('/result', arguments: {
          'places': places, 'category': title,
        });
      },
      child: SizedBox(
        width: 100,
        height: 76,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'icons/$iconName.svg',
              width: 50,
              height: 50,
            ),
            const SizedBox(height: 5),
            Text(title, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
