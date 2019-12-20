import 'package:flutter/material.dart';
import 'package:magic_widget/src/blocs/first_page_bloc.dart' as first_bloc;

class BtnTwoWidget extends StatelessWidget {
  const BtnTwoWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = first_bloc.MagicalWidget.of(context);

    _onPressedSecondBtn(first_bloc.MagicalBloc bloc) {
      bloc.changeUIElement("You pressed Button 2", first_bloc.MAGICAL_firstPageControls.txtField1Input);
    }

    return StreamBuilder<first_bloc.MagicalController>(
      stream: bloc.magicalStream ,
      initialData: first_bloc.MagicalController() ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        final enable = snapshot.data.enableSecondBtn;
        return RaisedButton(
          child: Text(snapshot.data.txtField2Input),
          onPressed: enable ? () => _onPressedSecondBtn(bloc) : null,
                  );
                },
              );
 
  }
}
          
            