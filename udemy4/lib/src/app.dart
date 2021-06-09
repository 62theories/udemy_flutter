import 'package:flutter/material.dart';
import 'package:udemy4/src/screens/news_list.dart';
import 'package:udemy4/src/blocs/stories_provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoriesProvider(
      child: MaterialApp(
        title: 'News',
        home: NewsList(),
      ),
    );
  }
}
