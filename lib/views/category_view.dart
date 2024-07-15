import 'package:flutter/material.dart';
import 'category_view_rows.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, this.categoryName, this.image});

  final String? image;

  final String? categoryName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return CategoryViewRow(
              categoryName: categoryName!,
            );
          },
        ));
      },
      child: Container(
        width: 105,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                image: AssetImage(image.toString()), fit: BoxFit.fill)),
        child: Center(
            child: Text(categoryName.toString(),
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.white))),
      ),
    );
  }
}
