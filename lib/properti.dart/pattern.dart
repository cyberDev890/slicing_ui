import 'package:flutter/material.dart';

class Pattern {
  final Color color;
  final bool isSelected;
  const Pattern({required this.color, this.isSelected = false});

  static const List<Pattern> colors = [
    Pattern(color: Color(0XFF9A9390)),
    Pattern(color: Color(0XFFEEA427)),
    Pattern(color: Color(0XFFFFFFFF)),
    Pattern(color: Color(0XFF80450A)),
  ];
}
