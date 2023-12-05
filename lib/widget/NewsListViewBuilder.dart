import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../Model/ArticleModel.dart';
import '../Services/ApiServices.dart';
import 'NewsTileListView.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String category;
  const NewsListViewBuilder({super.key, required this.category});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<ArticleModel> articles = [];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NewsServices(Dio()).getNews(category: widget.category),
      builder: (context, snapshot) {
        return NewsListView(articles: snapshot.data ?? []);
      },
    );
  }
}
