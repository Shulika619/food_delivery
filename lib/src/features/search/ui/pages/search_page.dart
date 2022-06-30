import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/const.dart';

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
      backgroundColor: kMainBgColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Search",
          style: TextStyle(color: kTxtMainColor, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: kMainBgColor,
        iconTheme: const IconThemeData(color: kTxtMainColor),
      ),
      body: const SafeArea(
        bottom: false,
        child: SearchTextField(hintText: "Search"),
      ),
    );
  }
}
