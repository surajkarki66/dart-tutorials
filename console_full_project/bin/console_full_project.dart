import 'package:console_full_project/console_full_project.dart'
    as console_full_project;
import 'package:console_full_project/src/calculate.dart';

void main(List<String> arguments) {
  try {
    print('Hello world: ${console_full_project.calculate()}!');
    print(
        'Args sum are ${arguments.fold<int>(0, (previousValue, element) => previousValue + int.parse(element))}');

    print(calculateAdd());
    print(calculateSub());
    print(calculateMultiply());
    print(calculateDivide());
  } catch (e) {
    print("Error: At least one of the arguments is not an integer");
  }
}