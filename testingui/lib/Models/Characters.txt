import 'package:flutter/material.dart';
import 'package:testingui/Models/AbilityScores.dart';
import 'package:testingui/Models/Heritages.dart';
import './Ancestries.dart';
import './Classes.dart';
import './Feats.dart';
import './Skills.dart';
import './Spells.dart';
import 'Skills.dart';



class Characters {

  String _characterName;
  String _playerName;
  Classes _classes;
  String _className;
  int _experiencePoints;
  Ancestries _ancestry;
  String _ancestryName;
  Heritages _heritage;
  List<String> _traits = [];
  

  AbilityScores _abilityScores;



  int _healthPoints;
  int _level;
  String _alignment;
  
  //Skills
  Skills _acrobatics;
  Skills _arcana;
  Skills _athletics;
  Skills _crafting; 
  Skills _deception;
  Skills _diplomacy;
  Skills _intimidation;
  Skills _lore1;
  Skills _lore2;
  Skills _medicine;
  Skills _nature;
  Skills _occultism;
  Skills _performance;
  Skills _religion;
  Skills _society;
  Skills _stealth;
  Skills _survival;
  Skills _thievery;





}