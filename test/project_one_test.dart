import 'package:project_one/resistor.dart';
import 'package:test/test.dart';

void main() {
  test('color code test', () {
    var c = Resistor();
    expect(c.getColorCode('black'), 0);
    expect(c.getColorCode('brown'), 1);
    expect(c.getColorCode('red'), 2);
    expect(c.getColorCode('white'), 9);
  });
}
