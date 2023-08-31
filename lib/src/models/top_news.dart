// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:news_get_x/src/models/articles.dart';

class TopNews {
  TopNews({
    required this.status,
    required this.totalResults,
    required this.articles,
  });
  final String status;
  final int totalResults;
  final List<Articles> articles;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'totalResults': totalResults,
      'articles': articles.map((x) => x.toMap()).toList(),
    };
  }

  factory TopNews.fromMap(Map<String, dynamic> map) {
    return TopNews(
      status: map['status'] as String,
      totalResults: map['totalResults'] as int,
      articles: List<Articles>.from(
        (map['articles'] as List<int>).map<Articles>(
          (x) => Articles.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory TopNews.fromJson(String source) =>
      TopNews.fromMap(json.decode(source) as Map<String, dynamic>);
}
