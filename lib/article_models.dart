class ArticleModel {
  final String? img;

  final String title;

  final String? subtitle;

  ArticleModel(
      {required this.img, required this.title, required this.subtitle});
  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        img: json['urlToImage'],
        title: json['title'],
        subtitle: json['description']);
  }
}
