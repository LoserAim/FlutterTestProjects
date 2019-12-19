import 'package:magic_widget/src/pages/mypage.dart'
import 'package:flutter/material.dart';
void main() => runApp(ExampleApp());
class ExampleApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return MaterialApp(
   home: Scaffold(
   body: MyPage(),
  )
 );
}}