import 'package:bloc_login/src/pages/pg_login.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Log Me In',
        home: Scaffold(
          body: PageLogin(),
        ));
  }
}
