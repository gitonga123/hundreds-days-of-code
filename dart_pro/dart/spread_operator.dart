// Spread operator
void main() {
  var list = [1, 2, 3, 4];
  var list2 = [0, ...list];
  print(list2);

  var list3 = [0, ...?list2];
  print(list3);

  var list4 = [...list3, ...list2];

  print(list4);
}