// Positional Optional Parameters
int addSomeNums(int x, int y, [int z]) {
  int sum = x + y;
  if (z != null) {
    sum += z;
  }

  return sum;
}

void main() {
  print(addSomeNums(5, 4));
  print(addSomeNums(5, 4, 3));
}