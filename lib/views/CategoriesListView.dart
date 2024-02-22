import 'package:flutter/material.dart';

import '../CategoryModel.dart';
import 'category_view.dart';

class ListViewCard extends StatelessWidget {
  const ListViewCard({
    super.key,
  });

  static const List<CategoryModel> listy = [
    CategoryModel(
      image: 'assets/business.avif',
      categoryName: 'business',
    ),
    CategoryModel(
      image: 'assets/entertaiment.avif',
      categoryName: 'entertainment',
    ),
    CategoryModel(
      image: 'assets/health.avif',
      categoryName: 'health',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      categoryName: 'science',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'technology',
    ),
    CategoryModel(
      image: 'assets/sports.avif',
      categoryName: 'sports',
    ),
    CategoryModel(
      image: 'assets/general.avif',
      categoryName: 'general',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listy.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CategoryCard(
                image: listy[index].image,
                categoryName: listy[index].categoryName),
          );
        },
      ),
    );
  }
}
