library second_library;

import "package:dart_libraries/first_library/first_library.dart";

void anotherFunction() {
  var a = A();
  print(a.publicField);
  a.publicMethod();

  publicTopLevelFunction();
  print(publicTopLevel);
}
