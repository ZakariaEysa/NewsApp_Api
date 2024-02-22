import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/views/NewsListViewBulder.dart';

class Category_view_Row extends StatelessWidget {
  const Category_view_Row({super.key, required this.categoryname});
  final categoryname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(

        backgroundColor: Colors.white,
          title: Text(categoryname),
        centerTitle: true,

      ),
      body: CustomScrollView(
        slivers: [
          // const SliverToBoxAdapter(
          //     child: SizedBox(
          //       height: 5,
          //     )),
          newslistviewbuilder(CategoryType: categoryname),
        ],
      ),
    );
  }
}
