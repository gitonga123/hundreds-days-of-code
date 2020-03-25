import 'dart:io';

import 'list_1.dart';

void main() {
  stdout.writeln("Greet Somebody");
  String input = stdin.readLineSync();
  helloWorld(input);
}