import 'package:flutter/material.dart';
import 'dart:math';

class result{
     result({ required this.height,required this.weight});
     final double height;
     final double weight;

  List<String> statement = [
    'UNDERWEIGHT',
    'YOU NEED TO FOLLOW A GOOD DIET,SUKD',
    'OVERWEIGHT',
    'YOU NEED TO EXERCISE MORE,MOTU',
        ' YOU ARE FIT',
    'YOU SHOULD MAINTAIN THIS WEIGHT',
  ];

  double range =0;

  String bmi() {
    range = weight/pow(height/100, 2);

    return range.toStringAsFixed(1);
  }

  String interpretation() {
    if (range < 18) {
      return statement[0];
    }
    else if (range > 18 && range < 24) {
      return statement[4];
    }
    else {
      return statement[2];
    }
  }

  String solution() {
    if (range < 18) {
      return statement[1];
    }
    else if (range > 18 && range < 24) {
      return statement[5];
    }
    else {
      return statement[3];
    }
  }
}