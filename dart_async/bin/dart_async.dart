import "dart:async";

void main(List<String> arguments) {
  print("Start!");
  Future(() => 1)
      .then((int r) => print(r))
      .onError((error, stackTrace) => null)
      .whenComplete(() => null);
  Future(() => Future(() => 2)).then(print);

  Future.delayed(const Duration(seconds: 1), () => 3).then(print);
  Future.delayed(const Duration(seconds: 1), () => Future(() => 4)).then(print);

  Future.value(5).then(print); // printing 5 in an asynchronous way
  Future.value(Future(() => 6)).then(print);

  Future.sync(() => 7).then(print); // Future.value(7)
  Future.sync(() => Future(() => 10)).then(print); // Future(() => 8)

  Future.microtask(() => 9)
      .then(print); // here future is placed in microtask queue

  Future.microtask(() => Future(() => 10))
      .then(print); // Future(() => 10), but placed on microtask queue

  Future(() => 11).then((int r) => print(r));
  Future(() => Future(() => 12)).then(print);

  print("End!");
}
