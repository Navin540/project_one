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

  test("Leap year test", () {
// check the leap year list in goolge and check
    var leap = ReverseStr();
    expect(leap.isleapYear(2000), true);
    expect(leap.isleapYear(2600), false);
    expect(leap.isleapYear(2200), false);
  });

  test('scrabble score', () {
    var r = ReverseStr();
    expect(r.scrabbleScore('cabbage'), 14);
  });

  test(' Arm Strong Number', () {
    var r = ReverseStr();
    expect(r.armStrongNumber(153), 'armstrong number');
    expect(r.armStrongNumber(154), 'not armstrong number');
  });

  test('isogram', () {
    var r = ReverseStr();
    expect(r.isogram('abca'), 'not isogram');
    expect(r.isogram('abc'), 'isogram');
  });
}
