void main() {
  Set<int> specialNumbers = {1, 4, 6};
  specialNumbers.add(3);
  specialNumbers.add(7);
  specialNumbers.add(8);

  for (var item in specialNumbers) {
    print(item);
  }
}