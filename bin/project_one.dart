import 'package:project_one/resistor.dart';
import 'dart:io';

void main(List<String> arguments) {
  // print('Hello world: ${project_one.helloWorld()}!');
  getResistorcolor();
}

void getResistorcolor() {
  print("Enter Resistor color :");
  var color = stdin.readLineSync();

  if (color == null || color.isEmpty) {
    print("invalid color entered.");
  } else {
    var r = Resistor();
    print("color code: ${r.getColorCode(color)}");
  }
}
