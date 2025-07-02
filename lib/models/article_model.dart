class Article {
  final String title;
  final String source;
  final String? imageUrl;

  Article({
    required this.title,
    required this.source,
    this.imageUrl,
  });
}