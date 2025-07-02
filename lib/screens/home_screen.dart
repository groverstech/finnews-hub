import 'package:flutter/material.dart';
import '../data/dummy_articles.dart';
import '../widgets/news_card.dart';

class HomeScreen extends StatelessWidget {
  final tabs = ['India', 'Global', 'Stocks', 'Economy', 'Crypto'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('FinNews Hub'),
          bottom: TabBar(
            isScrollable: true,
            tabs: tabs.map((tab) => Tab(text: tab)).toList(),
          ),
        ),
        body: TabBarView(
          children: tabs.map((tab) {
            final articles = dummyArticles[tab.toLowerCase()] ?? [];
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (ctx, i) => NewsCard(article: articles[i]),
            );
          }).toList(),
        ),
      ),
    );
  }
}