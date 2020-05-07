// the cascade operator
// invokes the methods in the class
// used as a shorthand in cases where there is a sequence of invocations

class Student {
  void test_method() {
    print("This is a test method");
  }

  void test_method1() {
    print("This is a test method 1");
  }
}

void main() {
  new Student()
    ..test_method()
    ..test_method1();
}
