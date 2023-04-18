import "dart:math" as math;

void main(List<String> args) {
  int min = -1, max = 2;
  int zero = min + math.Random().nextInt(max - min);

  print("Random zero: $zero");

  try {
    if (zero < 0) {
      throw NegativeValue(message: "Negative value");
    } else if (zero > 0) {
      throw PositiveValue(message: "Positive value");
    }
  } catch (e) {
    if (e is NegativeValue) {
      print(e.message);
    } else if (e is PositiveValue) {
      print(e.message);
    }
  } finally {
    zero = 0;
  }
  if (zero == 0) {
    print("Zero at the end: $zero");
  }
}

class NegativeValue implements Exception {
  final String message;
  NegativeValue({required this.message});
}

class PositiveValue implements Exception {
  final String message;
  PositiveValue({required this.message});
}
