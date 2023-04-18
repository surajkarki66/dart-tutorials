import 'dart:math';

void main(List<String> args) {
  var p1 = const Point(x: 1, y: 2);
  var p2 = const Point(x: 1, y: 2);

  // const p1 =  Point(x: 1, y: 2);
  // const p2 =  Point(x: 1, y: 2);

  print(identical(p1,
      p2)); // gives true due to const and have same value of x and y => best practice

  print(Point.origin.x);
  print(Point.origin.y);
  print(Point.getOrigin());

  print(Point.random(isPositive: false));

  print(p1 + p2);
}

class Point {
  const Point(
      {required this.x,
      required this.y}); // by making constructor const if two point have same value will have same reference(memory)

  // factory constructor => constructor which can return value
  factory Point.getOrigin() {
    return origin;
  }

  factory Point.random({required bool isPositive}) {
    int minNegValue = -99;
    int maxNegValue = -1;
    int minPosValue = 0;
    int maxPosValue = 99;

    int randomNegativeValue =
        minNegValue + Random().nextInt(maxNegValue - minNegValue);

    int randomPositiveValue =
        minPosValue + Random().nextInt(maxPosValue - minPosValue);

    return isPositive
        ? Point(x: randomPositiveValue, y: randomPositiveValue)
        : Point(x: randomNegativeValue, y: randomNegativeValue);
  }

  final int x;
  final int y;

  Point operator +(Point p) => Point(x: x + p.x, y: y + p.y);
  Point operator -(Point p) => Point(x: x - p.x, y: y - p.y);

  static const Point origin = Point(x: 0, y: 0);
  @override
  String toString() {
    return "Point(x: $x, y: $y)";
  }
}
