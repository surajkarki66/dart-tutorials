import 'dart:async';

void main(List<String> args) async {
  // Stream.periodic(const Duration(seconds: 1), (x) => x).listen((event) {
  //   print(event);
  // }); // creates a stream that repeatedly emits events at [period] intervals.

  final StreamController streamController = StreamController<int>();
  final StreamSubscription streamSubscription =
      streamController.stream.listen((event) {
    print(event);
  });

  var value = 0;

  Timer.periodic(const Duration(seconds: 1), (timer) {
    if (value == 5) {
      timer.cancel();
      streamController.close();
      streamSubscription.cancel();
    } else {
      streamController
          .add(value++); //Listeners receive this event in a later microtask.
    }
  });

  // var max = 0;
  // await streamController.stream.forEach((value) {
  //   max = value > max ? value : max;
  // });
  // print("Max is $max");
}
