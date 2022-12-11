class Resistor {
  static const List<String> colorCodes = [
    "black",
    "brown",
    "red",
    "orange",
    "yellow",
    "green",
    "blue",
    "violet",
    "grey",
    "white",
  ];

  int getColorCode(String color) {
    return colorCodes.indexOf(color.toLowerCase());
  }
}
