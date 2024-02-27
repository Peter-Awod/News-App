import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_hub/services/news_service.dart';

import '../../models/article_model/article_model.dart';
import 'news_item.dart';

class NewsListView extends StatelessWidget {

  List<ArticleModel> articles;

  NewsListView({required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(
            bottom: 16,
          ),
          child: NewsItem(
            articleModel: articles[index],
          ),
        ),
      ),
    );
  }
}
