import 'package:flutter/material.dart';
import '../models/article_model.dart';

class NewsCard extends StatelessWidget {
  final Article article;

  NewsCard({required this.article});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 4,
      child: ListTile(
        leading: article.imageUrl != null
            ? Image.network(article.imageUrl!, width: 60, fit: BoxFit.cover)
            : null,
        title: Text(article.title),
        subtitle: Text(article.source),
        onTap: () {
          // Navigate to detail screen later
        },
      ),
    );
  }
}