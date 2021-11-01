import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator_Brain {
  Calculator_Brain({@required this.height, @required this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String Getresult() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'You have higher than normal body weight. Try to excercise more!';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Very Good!';
    } else {
      return 'You have lower than normal body weight. YOu can eat more!';
    }
  }
}
