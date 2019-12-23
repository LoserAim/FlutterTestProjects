import 'package:bloc_login/src/blocs/bloc_login.dart';
import 'package:bloc_login/src/widgets/btn_submit.dart';
import 'package:bloc_login/src/widgets/wg_field_email.dart';
import 'package:bloc_login/src/widgets/wg_field_password.dart';
import 'package:flutter/material.dart';

class PageLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocLogin();

    return Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.all(25.0)),
            submitButton(),
          ],
        ));
  }
}
