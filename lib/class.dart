/*
import 'dart:math';

class Point {
  double x, y;
  Point(this.x, this.y);

  static double distanceBetween(Point a, Point b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}

void main() {
  var a = Point(2, 2);
  var b = Point(4, 4);
  var distance = Point.distanceBetween(a, b);
  assert(2.8 < distance && distance < 2.9);
  print(distance);
}

 */

import 'dart:math';
class Student {
  String name;
  int age;

  Student(this.name, this.age);

  void displayInfo() {
    print('Tên : $name');
    print('Tuổi: $age');
  }
}
void main () {
  Student s1 = Student('Lan', 20);
  s1.displayInfo();
}



