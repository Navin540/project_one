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
}
