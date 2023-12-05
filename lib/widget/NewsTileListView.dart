// ignore: file_names
import 'package:flutter/material.dart';
import 'package:news__app/Model/ArticleModel.dart';
import 'package:news__app/Pages.dart/DetailsPage.dart';
import 'package:news__app/widget/NewsTile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;
  const NewsListView({super.key, 
    required this.articles,
  });
  // @override
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(
                    model: articles[index],
                  ),
                ));
          },
          child: NewsTile(
            articlemodel: articles[index],
          ),
        );
      },
    );
  }
}
