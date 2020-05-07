void main() {
  var listOfDays = [
    DateTime(2018, 5, 6),
    DateTime(2019, 5, 6),
    DateTime(2020, 5, 6),
  ];

  var humanReadableListOfDays = [
    "2018-05-05 00:00:00.000",
    for (var day in listOfDays) day.toString(),
    "2018-05-09 00:00:00.000"
  ];

  print(humanReadableListOfDays);
}