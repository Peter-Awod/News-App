import 'package:flutter/material.dart';
import 'package:news_hub/models/article_model/article_model.dart';

class NewsItem extends StatelessWidget {
  NewsItem({super.key, required this.articleModel});

  ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            articleModel.imageUrl ??
                'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png',
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          articleModel.title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subTitle ?? '',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.grey[600],
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
