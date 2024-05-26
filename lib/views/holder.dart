import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/ArticleModels.dart';
import 'package:news_app_ui_setup/serveses/newsServes.dart';
import 'package:news_app_ui_setup/views/news_tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView( {

  super.key, required List<ArticleModel> listy,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> listy = [];
  bool isloading = true;
  @override
  void initState() {
    super.initState();
    getnewsGeneral();
  }

  Future<void> getnewsGeneral() async {
    listy = await newServes(Dio()).getNews(Ccategory: '');
    isloading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isloading
        ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
        : SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: listy.length,
            (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTile(article: listy[index]),
          );
        },
      ),
    );
  }
}
