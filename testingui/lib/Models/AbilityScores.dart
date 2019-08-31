import 'package:flutter/material.dart';

abstract class AbilityScores {
  int _strengthScore;
  int _dexterityScore;
  int _constitutionScore;
  int _intelligenceScore;
  int _wisdomScore;
  int _charismaScore;
  
  int _strengthModifier;
  int _dexterityModifier;
  int _constitutionModifier;
  int _intelligenceModifier;
  int _wisdomModifier;
  int _charismaModifier;

  void calcAbilityModifers() {
    _strengthModifier = ((_strengthScore-10)/ 2).floor();
    _dexterityModifier = ((_dexterityScore-10)/ 2).floor(); 
    _constitutionModifier = ((_constitutionScore-10)/ 2).floor(); 
    _intelligenceModifier = ((_intelligenceScore-10)/ 2).floor(); 
    _wisdomModifier = ((_wisdomScore-10)/ 2).floor(); 
    _charismaModifier = ((_charismaScore-10)/ 2).floor();  

  }
  

}