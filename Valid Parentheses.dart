class Solution {
  bool isValid(String s) {
    Map<String, String> parenthenses = <String, String>{
      ")": "(",
      "}": "{",
      "]": "[",
    };
    List<String> list = [];
    for (String item in s.split("")) {
      print(item);
      if (parenthenses.containsKey(item)) {
        if (list.length == 0 || list[list.length - 1] != parenthenses[item]) {
          return false;
        } else {
          list.removeLast();
        }
      } else {
        list.add(item);
      }
    }
    return list.length == 0;
  }
}

void main() {
  final one = Solution();
  String a = "()";
  final result1 = one.isValid(a);
  print(result1);
  String b = "()[]{}";
  final result2 = one.isValid(b);
  print(result2);
  String c = "(]";
  final result3 = one.isValid(c);
  print(result3);
}
