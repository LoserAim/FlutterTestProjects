import 'package:flutter/material.dart';
import 'package:testingui/Models/Enums.dart';
import 'package:testingui/Models/Skills.dart';


class Feats {

  // Feat prerequisites 
  /* Feats have pre-requisites that are either/or skill, ability score, or level */

  int _level;
  FeatType _featType;
  List<Skills> _skill = [];
  
  

  
  String _name;
  String _description;

  
}