class Solution1 {
  bool isPalindrome(int x) {
    if (x < 0) {
      return false;
    }
    var num = x;
    var rev = 0;
    while (num != 0) {
      var digit = num % 10;
      rev = rev * 10 + digit;
      num = num ~/ 10;
    }
    return rev == x;
  }
}

class Solution2 {
  bool isPalindrome(int x) {
    String y = x.toString();
    bool verifier = true;
    for (var i = 0; i < ((y.length) ~/ 2).toInt(); i++) {
      if (y[i] != y[y.length - 1 - i]) {
        verifier = false;
      }
    }
    return verifier;
  }
}
