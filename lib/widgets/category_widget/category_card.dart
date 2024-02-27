import 'package:flutter/material.dart';
import 'package:news_hub/models/category_model/category_model.dart';
import 'package:news_hub/widgets/category_widget/category_view.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({required this.categoryModel});

  CategoryModel? categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryView(category: categoryModel!.categoryName),
          ),
        );
      },
      child: Card(
        color: Colors.grey,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          height: 100,
          width: 210,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(categoryModel!.categoryImage),
            ),
          ),
          child: Center(
            child: Text(
              categoryModel!.categoryName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
