void main(List<String> args) {
  asyncGenerator().listen((event) {
    print(event);
  });
}

// async generator
Stream<int> asyncGenerator() async* {
  for (var i = 0; i < 5; i++) {
    yield i;
  }
}
