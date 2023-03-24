import 'package:flutter/material.dart';

@immutable
abstract class ColorState {
  Color color = Colors.purple;
  ColorState({required this.color});
}

class ColorInitial extends ColorState {
  ColorInitial() : super (color: Colors.purple);
// ColorInitial({required super.counter});
}

class ColorIncrement extends ColorState {
  ColorIncrement(Color increasedColor) : super (color: increasedColor);
// ColorInitial({required super.counter});
}


class ColorDecrement extends ColorState {
  ColorDecrement(Color decreasedColor) : super (color: decreasedColor);
// ColorInitial({required super.counter});
}

class ColorReset extends ColorState {
  ColorReset (Color resetedColor) : super (color: Colors.purple);
}

