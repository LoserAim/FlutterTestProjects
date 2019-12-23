import 'package:flutter/material.dart';
import 'package:magic_widget/src/blocs/feat_item_bloc.dart' as feat_bloc;
class Feat extends StatelessWidget {
  bool selected;
  String title;

  Feat(this.selected, this.title);

  @override
  Widget build(BuildContext context) {
    
    return feat_bloc.MagicalWidget(
      child: StreamBuilder<feat_bloc.MagicalController>(
        stream: feat_bloc.MagicalWidget.of(context).magicalStream ,
        initialData: feat_bloc.MagicalController() ,
        builder: (BuildContext context, AsyncSnapshot snapshot){
          final bloc = feat_bloc.MagicalWidget.of(context);
          return ExpansionTile(
                            leading: Checkbox(
                            onChanged:
                              (bool val) {
                                this.selected = val;
                                bloc.changeUIElement(val, feat_bloc.MAGICAL_featItemControls.enableCheckbox);
                              },),
                            title: Text(this.title),
              );
            },
         
    ),
  );
  }
}



