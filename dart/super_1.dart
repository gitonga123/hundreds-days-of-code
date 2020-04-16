// super keyword is used to refer to the immediate parent of a class

class Parent {
  String msg = "Message variable from the parent class";
  void m1(int a) {
    print("Value of a ${a}");
  }
}

class Child extends Parent {
  @override
  void m1(int b) {
    print("value of b ${b}");
    super.m1(13);
    print("${super.msg}");
  }
}

void main() {
  Child c = new Child();
  c.m1(12);
}