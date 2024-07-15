import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../article_models.dart';
import '../services/news_services.dart';
import 'news_listview.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.categoryType});
  final String categoryType;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsServices(Dio()).getNews(category: widget.categoryType);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(list: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text("oops there was an error , try later "),
          );
        } else
          return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()));
      },
    );
  }
}
