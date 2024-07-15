import 'package:flutter/material.dart';
import 'news_listview_builder.dart';

class CategoryViewRow extends StatelessWidget {
  const CategoryViewRow({super.key, required this.categoryName});
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(categoryName),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(categoryType: categoryName),
        ],
      ),
    );
  }
}
