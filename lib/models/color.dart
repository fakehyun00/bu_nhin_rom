import 'package:flutter/material.dart';

//textfield and fontcolor
const myColor = Colors.white;

//background
final background = BoxDecoration(
    image: DecorationImage(
        fit: BoxFit.fill, image: AssetImage('assets/background_DA.png')));

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

Color getColor3(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Color.fromARGB(255, 0, 179, 255);
  }
  return Color.fromARGB(255, 255, 17, 17);
}

Color anserwrong(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.red;
  }
  return Color.fromARGB(255, 255, 255, 255);
}

Color ansercorret(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
    MaterialState.dragged,
    MaterialState.selected
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.green;
  }
  return Color.fromARGB(255, 255, 255, 255);
}

Color forgeanser(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
    MaterialState.dragged,
    MaterialState.selected
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.black;
  }
  return Colors.black;
}

class Styles {
  static TextStyle headLineStyle1 = TextStyle(
      fontSize: 30, color: Color(0xFFF37B67), fontWeight: FontWeight.w500);
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 17, fontWeight: FontWeight.w900);
}
