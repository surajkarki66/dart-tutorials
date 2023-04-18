void main(List<String> args) {
  var a = A();
  print(a.hashCode);
  print(a.runtimeType);
  print(a.toString());

  var b = B();
  b._private = 12;
  print(b._private);
  print(b.a);
  print(b.b);

  // b.c = 23;

  b.d = 56;
  print(b.d);

  b.e = 6;
  print(b.e);
  // b.e = 7;

  // b.f = 78;

  print(B.g);
  B.h = 67;
  print(B.h);
  B.i = 68;
  print(B.i);

  var c = C(1, 2, 3, 4, 5, 6);
  print(c.a);

  var d = D(x: 12, y: 67);
  print(d.toString());
  // d.x = 56; not allowed
  print(D.zero());
  print(D.zero().x);
  print(D.zero().y);

  var j = D.fromJSON(json: {"x": 1, "y": 5});
  print(j.x);
  print(j.y);

  print(D.zeroX(y: 8).x);
  print(D.zeroY(x: 8).y);
}

// by default every class extends from Object class
class A {
  // Sub classing
  @override
  String toString() {
    super.toString();
    return "Customized Method";
  }
}

class B {
  // Instance variables
  int?
      _private; // this variable can only be accessed in this file i.e. dart_classes.dart
  int? a;
  int b = 1;

  final int c = 2;

  late int d;
  late final int e;
  late final int f = 6;

  // Static variables
  static int g = 6;
  static late int h;
  static late int i = 0;
  static late final int j;

  static const int k = 10;
}

class C {
  C(this._private, this.a, this.b, this.c, this.d, this.e);

  int? _private;
  int? a;
  int b = 1;

  final int c;

  late int d;
  late final int e;
  late final int f = 6;
}

class D {
  D({required this.x, required this.y});

  // Named constructor
  D.zero()
      : x = 0,
        y = 0;

  D.fromJSON({required Map<String, int> json})
      : x = json["x"]!,
        y = json["y"]!;

  D.zeroX({required int y})
      : this(
            x: 0,
            y: y); //this(x: 0, y: y) is referring to  D({required this.x, required this.y})

  D.zeroY({required int x}) : this(x: x, y: 0);

  final int x;
  final int y;

  @override
  String toString() {
    return "D: $x, $y";
  }
}
