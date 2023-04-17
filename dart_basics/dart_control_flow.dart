enum Weather { sunny, cloudy, rainy }

void main(List<String> args) {
  int a = 5;

  // if/else statement
  if (a.isEven) {
    print("Even number");
  } else {
    print("Odd number");
  }

  // for loop
  var list = [1, "hello", "world", 3];

  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }

  for (var item in list) {
    print(item);
  }
  list.forEach((element) {
    print(element);
  });

  int i = 0;
  while (i < 8) {
    i++;
    print(i);
  }

  int j = 0;
  do {
    j++;
    print(j);
  } while (j < 0);

  // break and continue are same as of python
  // switch statement is same as of javascript

  print(Weather.cloudy);
  print(Weather.rainy);

  // assert
  var list1 = [];
  assert(list1.isNotEmpty, "List must not be empty!");
}
