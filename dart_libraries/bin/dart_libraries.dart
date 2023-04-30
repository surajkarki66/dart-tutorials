import "package:dart_libraries/top_library.dart";

void main(List<String> arguments) {
  var a = A();
  print(a.publicField);
  a.publicMethod();

  anotherFunction();

  publicTopLevelFunction();
  print(publicTopLevel);
}
