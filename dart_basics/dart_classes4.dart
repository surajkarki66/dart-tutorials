void main(List<String> args) {
  var car = Car();
  car.manufacturedYear = 2006;
  print("Car age is ${car.age}");
}

class Car {
  late int age;
  // setter
  set manufacturedYear(int value) => age = 2021 - value;
}
