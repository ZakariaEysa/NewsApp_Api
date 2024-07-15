import 'package:flutter/material.dart';
import '../article_models.dart';
import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> list;

  const NewsListView({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: list.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: GestureDetector(
                onTap: () {}, child: NewsTile(article: list[index])),
          );
        },
      ),
    );
  }
}
