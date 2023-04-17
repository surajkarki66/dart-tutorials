void main(List<String> args) {
  int a = 5;
  double b = 1.5;

  var c = a + b;
  print(c);

  var d = a / 5; // result will be in double
  var e = a ~/ 5; // result will be in integer

  print(d);
  print(e);

  print(e++);
  print(e);
  print(++e);

  print(identical(4, 4));
  print(identical(
      [1, 2], [1, 2])); // compare the reference of two objects => return false

  // all others operators are same as Python operators
}
