import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:futuretest/models/image_url.dart';
import 'package:futuretest/screens/home.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ImageUrl()),
      ],
      child: MaterialApp(
        title: 'future test',
        home: Home(),
      ),
    );
  }
}
