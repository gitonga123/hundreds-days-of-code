class Shape {
  void cal_area() {
    print("calling calc area defined n the shape class");
  }
}

class Circle extends Shape {

}

void main() {
  var obj = new Circle();
  obj.cal_area();
}

