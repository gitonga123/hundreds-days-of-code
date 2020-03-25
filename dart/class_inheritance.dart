class Parent {
  void m1(int a) {
    print("Value of a ${a}");
  }
}

class Child extends Parent {
  @override
  void m1(int b) {
    print("Value of b ${b}");
  }
}

void main() {
  Child c = new Child();
  c.m1(12);
}

