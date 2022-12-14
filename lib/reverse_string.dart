import 'dart:math';

class ReverseStr {
  String reverstring(String word) {
    return word.split('').reversed.join('');
  }

  bool isleapYear(int year) {
    bool isLeapYear = false;

    isLeapYear = (year % 4 == 0);
    if (year % 100 == 0) {
      isLeapYear = false;
      if (year % 400 == 0) {
        isLeapYear = true;
      }
    }
    return isLeapYear;
  }

  int scrabbleScore(String word) {
    const scores = {
      'AEIOULNRST': 1,
      'DG': 2,
      'BCMP': 3,
      'FHVWY': 4,
      'K': 5,
      'JX': 8,
      'QZ': 10
    };

//before you need to learn map and fold firstwhere function indivual. refer notes
    var res = word
        .toUpperCase()
        .split('')
        .map((c) => scores.entries.firstWhere((e) => e.key.contains(c)).value)
        .fold(0, (p, v) => p + v);
    return res;
  }

  String armStrongNumber(int num) {
    String sn = num.toString();
    var res = sn
        .split('')
        .map((e) => pow(int.parse(e), sn.length))
        .reduce((a, b) => a + b);

    if (int.parse(sn) == res) {
      return 'armstrong number';
    }
    return 'not armstrong number';
  }

  String isogram(String word) {
    //don't consider space, hifen, plus , asterics
    String sen = word.replaceAll(RegExp('[ -+*]'), '');
    int lenOfCovertedString = sen.split('').toSet().join().length;

    if (lenOfCovertedString == sen.length) {
      return 'isogram';
    } else {
      return 'not isogram';
    }
  }

  String diffOfSquare(int n) {
    var lis = List.generate(n, (i) => i + 1);

    var sqOfNnaturalno = pow(n * (n + 1) / 2, 2);
    var sum = lis.map((e) => pow(e, 2)).reduce((a, b) => a + b);

    return 'Difference of squares : ${(sqOfNnaturalno - sum).round()}';
  }
}
