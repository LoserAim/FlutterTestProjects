import 'package:magical_widget/magical_widget.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:quiver/iterables.dart';

part 'first_page_bloc.g.dart';

@Alakazam()
enum firstPageControls {
  enableFirstBtn$bool$true,
  enableSecondBtn$bool,
  txtField1Input,
  txtField2Input$StringMagic
}