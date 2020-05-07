// Every code block has access to variables "above" it.
// The scope is defined by the structure of the code,
// and you can see what variables are in the
// current scope by following the curly braces outward
// to the top level

String topLevel = "Hello";

void firstFunction() {
  String secondLevel = "Hi";
  print(topLevel);
  nestedFunction() {
    String thirdLevel = "Habari Yake";
    print(topLevel);
    print(secondLevel);
    innerNestedFunction() {
      print(topLevel);
      print(secondLevel);
      print(thirdLevel);
    }
  }
  print(topLevel);
  nestedFunction();
}

void main() => firstFunction();