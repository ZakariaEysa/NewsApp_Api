import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/ArticleModels.dart';
import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> listy;

  const NewsListView({super.key, required this.listy});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: listy.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: GestureDetector(
                onTap:() {


                        print("gester is worrking ");

                },

                child: NewsTile(article: listy[index])),
          );
        },
      ),
    );
  }
}
