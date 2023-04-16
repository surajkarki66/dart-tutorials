void main(List<String> arguments) {
  // Num
  int a = 2;
  int b = 2;

  double x = 3.3;
  double y = 3.3;

  // This is possible because the both int and double are inherited from the class num
  print(a + x);
  print(b + y);

  String num = '23';

  int toNum = int.parse(num);

  String toStr = toNum.toString();

  print(toNum);
  print(toStr);

  print(toNum.clamp(1, 5));

  print(34.4.round());

  // String

  String s1 = "Hello Mate!";
  String s2 = 'Hello Friend!';

  print(s1 + s2);

  double temperature = 20.5;
  String celsius = "Celcius";

  String s3 = "There are $temperature degrees ${celsius.toUpperCase()}";
  print(s3);

  String multilineString = """ 
                            This is a multiline string.
                            Hello Guys!
                            """;

  print(multilineString);

  // Boolean
  bool isTrue = true;

  if (isTrue) {
    print("True");
  }

  // Lists
  List<int> list = [1, 2, 3];

  print(list);
  print(list[0]);
  print(list.length);

  List<A> instances = [A(), A(), A(), A(), A()];
  print(instances);

  List l = [
    1,
    "string",
    10.4,
    true
  ]; // List<dynamic> l = [1, "string", 10.4, true];
  print(l);

  List<Object?> o = [1, "string", 10.4, true, null];
  print(o);

  var integarValue = o[0] as int;
  var stringValue = o[1] as String;
  var doubleValue = o[2] as double;
  var booleanValue = o[3] as bool;

  List<int> m = [1, 3, 4];
  List<int?> n = [
    1,
    null
  ]; // list n is non nullable but items inside the list can be nullable
  List<int>? p = [
    1
  ]; // list p is nullable but items inside the list is non nullable

  List<int?>? q = [1, 3, null]; // both are nullable

  // spread operator
  List<int> s = [...m];
  print(s);

  int? r = null;
  print(r?.isEven);

  bool salesActive = true;
  var salesMenu = ["Offers1", "Offers2", "Offers3"];

  List<String> menu = [
    'Home',
    'Store',
    'About',
    if (salesActive)
      for (var item in salesMenu) item,
  ];
  print(menu);

  // Set
  var set1 = Set();
  print(set1);

  Set<String> set2 = {"Hello", "World"};
  print(set2);

  var set3 = {1, 2, 3};
  print(set3);

  var set4 = <int>{...set3};
  print(set4);

  // maps (dictionary)
  var map1 = {};

  var map2 = {...map1, 1: "hello", 2: "world", 3: 4};
  print(map2);
  map2["4"] = "bad";
  print(map2);

  // runes => collection containing all decimal unicode code points of strings
  Runes runes = Runes("Hello");
  print(runes);

  String roseEmoji = '\u{1F339}';
  print(roseEmoji);
}

class A {}
