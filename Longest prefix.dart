class Solution {
  String longestCommonPrefix(List<String> strs) {
    String result = '';
    for (var i = 0; i < strs[0].length; i++) {
      for (String s in strs) {
        if (i >= s.length || strs[0][i] != s[i]) {
          print('s');
          print(s);
          print('s.length');
          print(s.length);
          print('strs[0][i]');
          print(strs[0][i]);
          return result;
        }
      }
      result += strs[0][i];
      print(result);
    }
    return result;
  }
}

void main() {
  List<String> strs = ['flower', 'flor', 'flat'];
  final one = Solution();
  final result = one.longestCommonPrefix(strs);
}
