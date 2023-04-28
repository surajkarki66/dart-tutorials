// ignore_for_file: unused_local_variable

class Stack<T> {
  // Here T is the generic type
  final List<T> _stack = [];

  T get peak => _stack.last;
  int get length => _stack.length;

  bool canPop() => _stack.isNotEmpty;

  T pop() {
    final T last = _stack.last;
    _stack.removeLast();
    return last;
  }

  void push(T value) => _stack.add(value);
}

void main(List<String> args) {
  // with the help of generic type we can create stack containing any type of element
  var stackInt = Stack<int>();
  var stackString = Stack<String>();

  stackInt.push(2);
  stackInt.push(3);
  stackInt.push(4);
  print(stackInt.canPop());
  print(stackInt.peak);
  print(stackInt.length);
  stackInt.pop();
  print(stackInt.peak);

  stackString.push("one");
  stackString.push("two");
  stackString.push("three");
  print(stackString.canPop());
  print(stackString.peak);
  print(stackString.length);
}
