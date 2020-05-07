void main() {
  List<String> planets = ['Mercury', 'Mars', 'Earth', 'Jupiter', 'Venus', 'Saturn', 'Neptune', 'Uranus'];
  for (var item in planets) {
    helloWorld(item);
  }

}

void helloWorld(String name) {
  print('Hello ${name}');
}