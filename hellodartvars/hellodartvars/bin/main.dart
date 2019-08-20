
import 'package:hellodartvars/hellodartvars.dart';
import 'package:hellodartvars/Utils.dart' as util;
import 'dart:math' as math;

class Person{
  String name, job;
  Person(this.name,this.job);
}

main(List<String> arguments) 
{

  var list = [new Person("Toby", "Human Resources"), new Person("Michael", "Regional Branch Manager"), new Person("Jim", "Sales")];
  var temp = list.any((e) => e.name == "Toby");
  print(math.max(10, 23));
}

