import 'package:flutter/material.dart';
import 'package:magic_widget/src/blocs/first_page_bloc.dart' as first_bloc;

class TxtFieldTwoWidget extends StatelessWidget {
  const TxtFieldTwoWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = first_bloc.MagicalWidget.of(context);
  	_onTxtChanged(String text, first_bloc.MagicalBloc bloc) {
			bloc.changeUIElement(text, first_bloc.MAGICAL_firstPageControls.txtField2Input);
	}
    return StreamBuilder(
	  stream: bloc.magicalStream,
	  initialData: first_bloc.MagicalController(),
	  builder: (BuildContext context, AsyncSnapshot snapshot){
		final code = snapshot.data.txtField2Input;
		return TextField(
			controller: TextEditingController()..text = code,
			onChanged: (text) => _onTxtChanged(text, bloc),
					);
				  },
				);
			  }
			
			  
}