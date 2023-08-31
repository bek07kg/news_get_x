class ApiConst {
  static const apiKey = "5b245bdd269b4324a88ce005cbfcd32e";
  static String topNews([String? domain]) =>
      'https://newsapi.org/v2/top-headlines?country=${domain ?? 'us'}&category=business&apiKey=$apiKey';
  static String searchNews(String text) =>
      'https://newsapi.org/v2/everything?q=$text&from=2023-07-30&sortBy=publishedAt&apiKey=$apiKey';

  static const String image =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpBAZafcETIewM5tuVRKUWoqpVNB5CKrIbGzOIB8IxWx40WQ2DK2MDkmbEin9_mu1K54Y&usqp=CAU';
}
