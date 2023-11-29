import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        Navigator.pushNamed(context, '/result', arguments: {'title': title});
      },
      child: Container(
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
