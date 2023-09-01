import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_get_x/src/components/detail_button.dart';
import 'package:news_get_x/src/components/detail_date.dart';
import 'package:news_get_x/src/components/detail_desc.dart';
import 'package:news_get_x/src/components/detail_divider.dart';
import 'package:news_get_x/src/components/detail_image.dart';
import 'package:news_get_x/src/components/detail_title.dart';
import 'package:news_get_x/src/models/articles.dart';
import 'package:news_get_x/src/theme/app_colors.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key, required this.news});

  final Articles news;

  @override
  Widget build(BuildContext context) {
    final time = DateFormat("d MMM, y. H:m").format(
      DateTime.parse(news.publishedAt.toString()),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.orange,
        title: Text(
          news.title,
          overflow: TextOverflow.fade,
        ),
        actions: news.url != null
            ? [
                IconButton(
                  onPressed: () {
                    Share.share(news.url!);
                  },
                  icon: const Icon(Icons.share),
                ),
              ]
            : null,
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(12, 16, 12, 0),
        children: [
          DetailTitle(news: news),
          const DetailDivider(),
          DetailDate(time: time),
          const SizedBox(height: 10),
          DetailImage(news: news),
          const SizedBox(height: 10),
          DetailDesc(news: news),
          const SizedBox(height: 20),
          news.url != null
              ? DetailButton(onPressed: () async {
                  final uri = Uri.parse(news.url!);
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                  }
                })
              : const SizedBox(),
        ],
      ),
    );
  }
}
