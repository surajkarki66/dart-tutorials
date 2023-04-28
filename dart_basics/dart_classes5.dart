class Animal {
  final String name;

  Animal({required this.name});

  void whatAmI() {
    print("I am an animal!");
  }

  void chase(Animal a) {}
}

class Mouse extends Animal {
  Mouse() : super(name: "Jerry");
}

class Cat extends Animal {
  Cat() : super(name: "Tom");
  @override
  void chase(covariant Mouse m) {}
}

class Bird extends Animal {
  Bird(String name) : super(name: name);
}

class Duck extends Bird {
  Duck(String name) : super(name);

  @override
  void whatAmI() => print("I am a duck!");

  void swim() {
    print("Swimming");
  }
}

void main(List<String> args) {
  Duck d = Duck("Munchkin");

  d.whatAmI();
}
