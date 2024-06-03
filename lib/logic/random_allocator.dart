import 'dart:math';
import 'package:flutter/material.dart';
class Random_allocator{

  Color getRandomColor() {
  const letters = '0123456789ABCDEF';
  final random = Random();
  String colorString = 'FF'; // Adding alpha channel for full opacity
  for (int i = 0; i < 6; i++) {
  colorString += letters[random.nextInt(16)];
  }
  return Color(int.parse(colorString, radix: 16));
  }
  double randomWidth(double maxWidth) {
    var randomWidth = Random().nextInt(maxWidth.toInt());
    if (randomWidth < 600) {
      randomWidth += 600;
    }
    return randomWidth.toDouble();
  }

}