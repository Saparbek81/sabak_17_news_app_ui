import 'package:flutter/material.dart';
import 'package:sabak_17_news_app_ui/constants/text_styles/title_color.dart';

class NewCard extends StatelessWidget {
  const NewCard({
    super.key,
    required this.index,
    required this.newsList,
  });
  final int index;
  final List newsList;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Image.asset(
            newsList[index].image,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(newsList[index].date, style: newsTextStyle),
                  Text(newsList[index].text, style: newsTextStyle),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
