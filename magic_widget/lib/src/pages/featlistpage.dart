import 'package:flutter/material.dart';
import 'package:magic_widget/src/widgets/feat.dart';

class FeatListPage extends StatelessWidget {
  List<Feat> featList = [
    Feat(false, 'Run like the wind'),
    Feat(false, 'eat pineapples'),
    Feat(false, 'What the babababooey')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: featList.length,
      itemBuilder: (BuildContext context, int index) {
        return featList[index];
      },

    );
  }
}