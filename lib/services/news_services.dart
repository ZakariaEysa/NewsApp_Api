import 'package:dio/dio.dart';

import '../article_models.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);
  String baseUrl =
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=1dd3c7acaad548689a813352fced51f0&category=";

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get('$baseUrl$category');

      Map<String, dynamic> jsonData = await response.data;
      List<dynamic> articles = await jsonData['articles'];
      List<ArticleModel> articlesList = [];

      for (var el in articles) {
        articlesList.add(ArticleModel.fromJson(el));
      }
      return articlesList;
    } catch (e) {
      return [];
      // TODO
    }
  }

  //
}
