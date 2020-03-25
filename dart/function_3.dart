// Defult Parameter values


int addSomeNums(int x, int y, [int z = 5]) => x + y + z;

void main() {
  int sum = addSomeNums(5, 6);
  assert(sum == 16);
  print(sum);
  int sum2 = addSomeNums(5, 6,10);
  assert(sum2 == 16);
  print(sum2);
}