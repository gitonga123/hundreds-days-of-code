class StaticMem { 
  static int num;
  static disp() {
    print("The value of num is ${StaticMem.num}");
  }
}

void main() {
  StaticMem.num = 12;
  
  StaticMem.disp();
}