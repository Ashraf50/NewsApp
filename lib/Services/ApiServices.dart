import 'package:dio/dio.dart';
import 'package:news__app/Model/ArticleModel.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    
    try {
  // ignore: non_constant_identifier_names
  String ApiKey = "apiKey=97d123beea9840de9879ded700f5cb38";
  Response response = await dio
      .get("https://newsapi.org/v2/top-headlines?country=us&$ApiKey&category=$category");
  Map<String, dynamic> jsonData = response.data;
  
  List<dynamic> articles = jsonData["articles"];
  // ignore: non_constant_identifier_names
  List<ArticleModel> ArticleList = [];
  for (var article in articles) {
    ArticleModel articleModel = ArticleModel(
      Title: article["title"],
      subTitle: article["description"],
      Image: article["urlToImage"],
    );
    ArticleList.add(articleModel);
  }
  return ArticleList;
}  catch (e) {
  return [];
}
  }
}