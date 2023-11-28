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
            buildCategoryItem('Restaurant', 'CustomRestaurant'),
            buildCategoryItem('Gym', 'CustomGym'),
            buildCategoryItem('Study Hub', 'CustomStudyHub'),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildCategoryItem('Coffee', 'CustomCoffee'),
            buildCategoryItem('Store', 'CustomStore'),
            buildCategoryItem('Museum', 'CustomMuseum'),
          ],
        ),
      ],
    );
  }

  Widget buildCategoryItem(String title, String iconName) {
    return Container(
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
    );
  }
}
