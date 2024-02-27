import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_hub/layouts/home_layout.dart';
import 'package:news_hub/services/news_service.dart';

void main() {

  runApp(const NewsHub());
}

class NewsHub extends StatelessWidget {
  const NewsHub({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}
