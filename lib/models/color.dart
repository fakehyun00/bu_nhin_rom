import 'package:flutter/material.dart';

//textfield and fontcolor
const myColor = Colors.white;

//background
final background_color = Color.fromARGB(255, 67, 44, 122);

Color getColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.blue;
  }
  return Colors.white.withOpacity(1);
}

Color getColor1(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Color.fromARGB(255, 232, 180, 116);
  }
  return Color.fromARGB(255, 232, 180, 116);
}

Color getColor2(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Color.fromARGB(255, 232, 180, 116);
  }
  return Color.fromARGB(255, 255, 255, 255);
}
