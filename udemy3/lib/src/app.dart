import 'package:flutter/material.dart';
import './screens/login_screen.dart';
import './blocs/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext build) {
    return Provider(
      child: MaterialApp(
        title: 'Login page',
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
