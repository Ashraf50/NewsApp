import 'package:flutter/material.dart';
import 'package:news__app/Model/ArticleModel.dart';

class NewsTile extends StatelessWidget {
  final ArticleModel articlemodel;
  const NewsTile({required this.articlemodel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: articlemodel.Image != null
                ? Image.network(articlemodel.Image!)
                : Image.asset("assets/null.jpeg")),
        Text(
          articlemodel.Title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          articlemodel.subTitle ?? "null",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 17,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
