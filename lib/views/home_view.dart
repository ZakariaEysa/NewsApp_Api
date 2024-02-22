import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/views/NewsListViewBulder.dart';
import 'CategoriesListView.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News ',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              const SliverToBoxAdapter(child: ListViewCard()),
              const SliverToBoxAdapter(
                  child: SizedBox(
                height: 32,
              )),
              newslistviewbuilder(CategoryType: 'general'),
            ],
          )),
    );
  }
}
