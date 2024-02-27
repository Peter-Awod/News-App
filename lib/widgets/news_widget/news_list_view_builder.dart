import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_hub/widgets/news_widget/news_list.dart';

import '../../models/article_model/article_model.dart';
import '../../services/news_service.dart';

class NewsListViewBuilder extends StatefulWidget {
   NewsListViewBuilder({super.key,required this.category});
   String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Text('Oops there is a problem, please try again later'),
          );
        } else {
          return SliverToBoxAdapter(
            child: LinearProgressIndicator(),
          );
        }
      },
    );
  }
}
