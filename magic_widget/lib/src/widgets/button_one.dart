import 'package:flutter/material.dart';
import 'package:magic_widget/src/blocs/first_page_bloc.dart' as first_bloc;

class BtnOneWidget extends StatelessWidget {
  const BtnOneWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = first_bloc.MagicalWidget.of(context);

    _onPressedFirstBtn(first_bloc.MagicalBloc bloc) {
      bloc.changeUIElement(
          true, first_bloc.MAGICAL_firstPageControls.enableSecondBtn);
    }

    return StreamBuilder<first_bloc.MagicalController>(
      stream: bloc.magicalStream,
      initialData: first_bloc.MagicalController(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        final enable = snapshot.data.enableFirstBtn;
        return RaisedButton(
          child: Text("First Button"),
          onPressed: enable ? () => _onPressedFirstBtn(bloc) : null,
        );
      },
    );
  }
}
