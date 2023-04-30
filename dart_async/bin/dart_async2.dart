void main(List<String> args) async {
  late final int a;
  late final int b;

  print("start!");

  a = await Future(() => 1);
  b = await fetchServer();

  print(a);
  print(b);

  print("end!");
}

Future<int> fetchServer() async {
  print("Fetching from database");
  final int value = await Future(() => 2);
  return value;
}
