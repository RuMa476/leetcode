void main() {
  List<int> list1 = [1, 2, 3];
  List<int> list2 = [1, 2, 3];
  list1.addAll(list2);
  List<int> newList = list1;
  print(newList);
  newList.sort();
  print(newList);
}
