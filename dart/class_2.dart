class Microwave {
  final int power;

  Microwave(this.power);

  void startCooking() {
    _startTimer();
    print("Starting cooking!");
  }

  void _startTimer() {
    print('Starting timer!');
  }

  static int compareWatts(Microwave a, Microwave b) {
    if (a.power > b.power) return -1;
    if (b.power > a.power) return 1;

    return 0;
  }
}

void main() {
  var averageMicrowave = Microwave(1100);
  var miniMicrowave = Microwave(800);
  var superMicrowave = Microwave(1100);

  averageMicrowave.startCooking();

  print(Microwave.compareWatts(averageMicrowave, superMicrowave));
  
}