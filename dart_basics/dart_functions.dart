void main(List<String> arguments) {
  Function functionObject = first; // storing function in a variable

  print(functionObject);
  second(first, 10);
  int Function(int) t = third();
  print(t);
  print(t(15));

  // Anonymous function
  var list = ['hello', 'everyone', 'guys'].map((e) => null);
  print(list);
  var list1 = ["i", "love", "my", "san"].map(convertToUpperCase);
  print(list1);
  var list2 = ["I", "LOVE", "MY", "SAN"].map((String s) => s.toLowerCase());
  print(list2);

  // calling
  requiredPositional(10, 3);
  optionalPositional();
  optionalPositional(1, 4);
  requiredNamed(a: 5, b: 7);
  requiredNamed(b: 5, a: 7);
  optionalNamed(b: 6);
  optionalNamed(b: 6, a: 7);
  namedHybrid(a: 4);
}

// Passing a function as an argument
void second(int Function(int) f, int a) {
  print(f.call(3));
  print(f(a));
}

int first(int a) {
  return a;
}

// Returning function from a function
int Function(int) third() {
  return (a) => a;
}

String convertToUpperCase(String s) {
  return s.toUpperCase();
}

// Function parameters
void requiredPositional(int a, int b) => print(
    "$a $b"); // positional means function call garda argument ko order function define garda ko argument ko order sanga match khana parxa

void optionalPositional([int a = 10, int? b]) =>
    print("$a $b"); // here order of argument matters but argument are optional

void requiredNamed({required int a, required int b}) =>
    print("$a $b"); // argument ko position le matter gardaina call garda

void optionalNamed({int a = 6, int b = 12}) => print("$a $b");

void namedHybrid({required int a, int b = 9}) => print("$a $b");
