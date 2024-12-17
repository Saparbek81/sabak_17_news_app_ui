import 'package:flutter/material.dart';
import 'package:sabak_17_news_app_ui/constants/app_colors/app_bar_bgc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppBarBgc.appBarBgc,
        title: const Text("News Agregator"),
      ),
    );
  }
}
