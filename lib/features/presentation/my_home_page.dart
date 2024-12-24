import 'package:flutter/material.dart';
import 'package:sabak_17_news_app_ui/constants/app_colors/icons_color.dart';
import 'package:sabak_17_news_app_ui/features/data/oop.dart';
import 'package:sabak_17_news_app_ui/features/data/service.dart';
import 'package:sabak_17_news_app_ui/mathods/my_ap_bar.dart';
import 'package:sabak_17_news_app_ui/widgets/news_card.dart';
import 'package:sabak_17_news_app_ui/widgets/search_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    NewsService().fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: searchColor,
        appBar: myAppBar(),
        body: ListView.builder(
            itemCount: newsList.length,
            itemBuilder: (context, index) {
              return NewCard(
                index: index,
                newsList: newsList,
              );

              Text(index.toString());
            }),
        floatingActionButton: const SearchWidget(),
      ),
    );
  }
}
