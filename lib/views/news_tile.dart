import 'package:flutter/material.dart';
import '../article_models.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.article});
  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: article.img != null
                ? Image.network(
                    article.img!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  )
                : Image.asset(
                    'assets/holder.png',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  )),
        const SizedBox(
          height: 12,
        ),
        Text(
          article.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          article.subtitle ?? ' ',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
