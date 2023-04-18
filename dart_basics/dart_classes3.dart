void main(List<String> args) {
  var s1 = Singleton();
  var s2 = Singleton();

  print(identical(s1, s2));
}

class Singleton {
  Singleton._privateConstructor();
  static final _instance = Singleton._privateConstructor();
  factory Singleton() => _instance;
}
