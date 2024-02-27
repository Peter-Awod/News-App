import 'package:flutter/material.dart';

import '../../models/category_model/category_model.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {

  List<CategoryModel>categories=[
    CategoryModel(categoryName: 'Business', categoryImage: 'assets/images/business.jpg'),
    CategoryModel(categoryName: 'Entertainment', categoryImage: 'assets/images/entertaiment.avif'),
    CategoryModel(categoryName: 'General', categoryImage: 'assets/images/general.jpg'),
    CategoryModel(categoryName: 'Health', categoryImage: 'assets/images/health.avif'),
    CategoryModel(categoryName: 'Science', categoryImage: 'assets/images/science.avif'),
    CategoryModel(categoryName: 'Sports', categoryImage: 'assets/images/sports.jpg'),
    CategoryModel(categoryName: 'Technology', categoryImage: 'assets/images/technology.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) => CategoryCard(categoryModel: categories[index]),
      ),
    );
  }
}
