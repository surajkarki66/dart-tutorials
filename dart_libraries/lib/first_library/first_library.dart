library first_library;

part 'first_library_part1.dart';
part 'first_library_part2.dart';
part 'first_library_part3.dart';

const int _privateTopLevel = 0;
const int publicTopLevel = 10;

void _privateTopLevelFunction() {}
void publicTopLevelFunction() {}

class A {
  final int _privateField = 6;
  void _privateMethod() {
    print("This is a private method");
  }

  final int publicField = 14;
  void publicMethod() {
    print("This is a public method");
  }
}
