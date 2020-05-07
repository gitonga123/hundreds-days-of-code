// You can use simple if and for statements inside list
// literals in order to programmatically add values
void main() {
  bool showToday = true;

  var listOfDays = [
    "Yesterday",
    if (showToday) "Today",
    "Tomorrow"
  ];

  print(listOfDays);
}