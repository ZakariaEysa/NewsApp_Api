import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../article_models.dart';
import '../services/news_services.dart';
import 'news_tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
    required List<ArticleModel> list,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> list = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getNewsGeneral();
  }

  Future<void> getNewsGeneral() async {
    list = await NewsServices(Dio()).getNews(category: '');
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()))
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: list.length,
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 22),
                  child: NewsTile(article: list[index]),
                );
              },
            ),
          );
  }
}
