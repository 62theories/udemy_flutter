import 'package:flutter/material.dart';
import './screens/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext build) {
    return MaterialApp(
      title: 'Login page',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
