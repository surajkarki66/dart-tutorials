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

void main(List<String> args) {
  Musician m = Musician();
  m.playGuitar();
  m.playDrums();
}
