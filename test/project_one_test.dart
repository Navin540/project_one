import 'package:project_one/resistor.dart';
import 'package:project_one/reverse_string.dart';
import 'package:project_one/two_for_one.dart';
import 'package:test/test.dart';

void main() {
  test('twofer', () {
    var T = TwoForOne();
    expect(T.twoFer('black'), 'one for black one for me');
    expect(T.twoFer(''), 'one for you one for me');
  });

  test('test Resistor color duo', () {
    var T = Resistor();
    expect(T.getResitorsVal('white'), 9);
    expect(T.getResitorsVal('black-white'), 9);
  });

  test('reverse string', () {
    var T = ReverseStr();
    expect(T.reverstring('cool'), 'looc');
  });
}
