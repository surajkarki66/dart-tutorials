// Top level variable
int t = 6;

// Late variable ko use => aile variable ko value initialize gardina tara future ma 100% value initialize garxu tesko
late int nonNullableInFuture;

class A {
  // Static variable => to access this we don't need to instantiate the object of the class
  static int s = 45;

  static late String nonNullableStaticVar;

  // Instance variable => to access this we need to instantiate the object of the class
  int t = 4;
}

void randomFunction() {
  // Local variable
  int y = 8;
}

void main(List<String> arguments) {
  // Dart variables
  int a = 5;
  double b = 0.0;

  print(a + b);

  // String? nullableString;
  // String nonNullableString;

  // nonNullableString =
  //     nullableString!; // ! is used to convert non nullable variable into nullable variable

  // print(nonNullableString);

  print("Top level variable $t");

  nonNullableInFuture = 78;

  print(nonNullableInFuture);

  print("Static variable: ${A.s}");
  print("Instance variable: ${A().t}");

  A.nonNullableStaticVar = "Hello";

  print(A.nonNullableStaticVar);

  // var versus dynamic variable
  var vi = 5;
  var vs = "string";
  var vl = [1, 2];

  // vi = 5.5; // This is not possible once the var get any type the type will not change

  print("var runtime types:\n");
  print(vi.runtimeType);
  print(vs.runtimeType);
  print(vl.runtimeType);

  // dynamic notify type chai aile dynamic xa tara runtime ko bela chai yesko real type assign hunxa
  dynamic di = 5;
  dynamic ds = "string";
  dynamic dl = [1, 2];

  // but you can change any type in dynamic during compile time
  di = "string2";
  print("dynamic runtime types:\n");
  print(di.runtimeType);
  print(ds.runtimeType);
  print(dl.runtimeType);

  var x; // dynamic x;

  // dynamic is nullable
  print(x.runtimeType);

  x = 8;
  print(x.runtimeType);

  x = "string";
  print(x.runtimeType);

  List<dynamic> randomList = [1, "S", 2.2];
  print(randomList);

  // const list1 = [1, 2, 3];
  // list1.add(4); // in runtime error will show => run garda error aauxa

  final list2 = [1, 2, 3];
  list2.add(4); // no error occurred
}
