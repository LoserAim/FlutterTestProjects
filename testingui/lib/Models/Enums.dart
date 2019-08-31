import 'package:flutter/material.dart';

enum KeyAbilityScore {
  STR,
  DEX,
  CON,
  INT,
  WIS,
  CHA,
  FREE
}

enum Trait {
  // a list of traits
  // Traits are applied to almost everything
  General,
  Skill,
  Manipulate,
  Fortune,
}

enum Proficiency {
  //When calculating Proficiency, Multiply by two to the enum
  // It should come out as 0, 2, 4, 6, 8
  Untrained,
  Trained,
  Expert,
  Master,
  Legendary
}

enum FeatType {

  Ancesctry,
  Skill,
  General,
  Class,
}

