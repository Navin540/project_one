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

  int getResitorsVal(String color) {
    var input = color.toLowerCase().split('-');
    if (input.isEmpty) return 0;

    var c1 = getColorCode(input[0]);
    var c2 = 0;
    if (input.length > 1) {
      c2 = getColorCode(input[1]);
    } else {
      return c1;
    }
    return c1 * 10 + c2;
  }
}
