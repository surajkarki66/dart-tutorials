mixin A {
  void method();
}

class Performer {
  void perform() => print("Performs!");
}

mixin Guitarist {
  void playGuitar() => print("Playing the guitar!");
  void perform() => playGuitar();
}

mixin Drummer {
  void playDrums() => print("Playing the drums");
  void perform() => playDrums();
}

class Musician extends Performer with Drummer, Guitarist {}

// add extra method to an existing class
extension IntegerExtension on int {
  int get luckyInteger => 12;
  int add15() => this + 15;
}

void main(List<String> args) {
  Musician m = Musician();
  m.playGuitar();
  m.playDrums();

  print(1.luckyInteger);
  print(10.add15());
}
