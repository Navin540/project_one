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
<<<<<<< HEAD

=======
    String word = 'cabbage';
>>>>>>> 2e604490b35ea5b18e2f667a43017b34aef7e9ec
    var res = word
        .toUpperCase()
        .split('')
        .map((c) => scores.entries.firstWhere((e) => e.key.contains(c)).value)
        .fold(0, (p, v) => p + v);
    return res;
  }
}
