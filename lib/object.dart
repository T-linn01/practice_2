class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  double get right => left + width;
  set right(double value) => left = value - width;

  double get bottom => top + height;
  set bottom(double value) => top = value - height;
}
void main() {
  Rectangle rect = Rectangle(10, 20, 100, 200);
  print('Right: ${rect.right}');
  print('Bottom: ${rect.bottom}');

  rect.right = 150;
  rect.bottom = 300;

  print('New left: ${rect.left}');
  print('New top: ${rect.top}');
}
