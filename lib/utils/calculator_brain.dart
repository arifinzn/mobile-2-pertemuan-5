import 'dart:math';
import 'package:flutter/material.dart';

class Calculate {
  Calculate({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi = 0;
  Color _textColor = Color(0xFF24D876);

  String result() {
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getText() {
    if (_bmi >= 25) {
      return 'KELEBIHAN BERAT BADAN';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'KEKURANGAN BERAT BADAN';
    }
  }

  String getAdvise() {
    if (_bmi >= 25) {
      return 'Berat badan anda lebih dari normal.\n Cobalah untuk melakukan lebih banyak Olahraga';
    } else if (_bmi > 18.5) {
      return 'Anda memiliki berat badan normal.\nKerja bagus!';
    } else {
      return 'Berat badan anda kurang dari normal.\n Cobalah makan lebih banyak';
    }
  }

  Color getTextColor() {
    if (_bmi >= 25 || _bmi <= 18.5) {
      return Colors.orange;
    } else {
      return const Color(0xFF24D876);
    }
  }
}
