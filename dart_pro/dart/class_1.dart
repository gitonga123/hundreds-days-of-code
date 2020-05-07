// Classes
// Constructors
// The standard Constructors
// The Named Constructors
// The Factor Constructors

class Cat {
  String name;
  String color;

  // a simple standard constructors
  Cat(this.name, this.color);

  Cat.orange(this.name) {
    color = 'Orange';
  }

  Cat.black(this.name) {
    color = 'Black';
  }

  @override
  String toString() => "Cat : ${this.name}, ${this.color}";
}

void main() {
  Cat cat = new Cat('Nora', 'Orange');
  print(cat);
  print(cat.name);
}