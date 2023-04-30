void main(List<String> arguments) {
  print("sum(1, 2) --> ${sum(1, 2)}");
  final a = show(10);
  print("a.last --> ${a.last}");
  print("a.first --> ${a.first}");
}

int sum(int a, int b) => a + b;

// generator function
Iterable<int> show(int n) sync* {
  print("Generator started!");
  for (var i = 1; i <= n; i++) {
    print(i);
    yield i;
  }
  print("Generator finished!");
}
