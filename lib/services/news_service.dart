import 'package:dio/dio.dart';
import 'package:news_hub/models/article_model/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);


  Future<List<ArticleModel>> getNews({required final String category}) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&category=${category}&apiKey=cbc71e3fa9804288839cd9a884d2f775');

    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articles = jsonData['articles'];

    List<ArticleModel> articleList = [];

    articles.forEach((article) {
      ArticleModel articleModel = ArticleModel(
        title: article['title'],
        subTitle: article['description'],
        imageUrl: article['urlToImage'],
      );
      articleList.add(articleModel);
    });

    return articleList;
  }
}
