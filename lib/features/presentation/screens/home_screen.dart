
import 'package:flutter/material.dart';
import 'package:wallpaper_app/features/presentation/screens/page/general_page.dart';
import 'package:wallpaper_app/features/presentation/screens/page/search_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: const TabBar(
              labelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.black,
              tabs: [
            Tab(text: 'General'),
            Tab(text: 'Natural'),
            Tab(text: 'Anime'),
          ]),
          elevation: 0,
          title: const Text(
            'Wallpaper',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: const TabBarView(
          children: [
            GeneralPage(),
            SearchPage(query: 'natural'),
            SearchPage(query: 'anime',),
          ],
        )
      ),
    );
  }
}
