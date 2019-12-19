import 'package:magic_widget/src/widgets/Button_one.dart';
import 'package:magic_widget/src/widgets/button_two.dart';
import 'package:magic_widget/src/widgets/txt_field_one.dart';
import 'package:magic_widget/src/widgets/txt_field_two.dart'; 
import 'package:magic_widget/src/blocs/first_page_bloc.dart' as first_bloc;
import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return first_bloc.MagicalWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        
        children: <Widget>[
        BtnOneWidget(),
        BtnTwoWidget(),
        TxtFieldOneWidget(),
        TxtFieldTwoWidget(),]
      )); 
  }
}