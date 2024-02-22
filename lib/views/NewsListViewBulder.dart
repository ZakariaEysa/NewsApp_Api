import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/ArticleModels.dart';
import 'package:news_app_ui_setup/serveses/newsServes.dart';
import 'package:news_app_ui_setup/views/newslistview.dart';

class newslistviewbuilder extends StatefulWidget {
  newslistviewbuilder({super.key, required this.CategoryType});
  String CategoryType;

  @override
  State<newslistviewbuilder> createState() => _newslistviewbuilderState();
}

class _newslistviewbuilderState extends State<newslistviewbuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = newServes(Dio()).getNews(Ccategory: widget.CategoryType);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(listy: snapshot.data!);
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
