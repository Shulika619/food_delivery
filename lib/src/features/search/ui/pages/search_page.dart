import 'package:flutter/material.dart';

import '../widgets/past_search.dart';
import '../widgets/recent_search.dart';
import '../widgets/search_textfield.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Search",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          SearchTextField(hint_text: "Search"),
          const RecentSearch(),
          PastSearch(search_text: "Grillled Chicken"),
          PastSearch(search_text: "Organic Orange"),
        ],
      ),
    );
  }
}
