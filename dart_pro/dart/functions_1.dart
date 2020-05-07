void debugger({String message, int lineNum}) {
  print("$message  $lineNum");
}

void main(List<String> args) {
  debugger(message: "How any licenses", lineNum: 5);
  debugger(lineNum: 5, message: "How any licenses");
}                                                                        