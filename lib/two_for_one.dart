class TwoForOne {
  String twoFer(var name) {
    if (name == null || name.isEmpty) {
      name = 'you';
    }
    return 'one for $name one for me';
  }
}
