void main() {
  final s1 = Stream.periodic(Duration(milliseconds: 500), (a) => a);
 /* var sub = s1.listen((event) => print(event),
      onError: (error) => print(error),
      onDone: () => print('Done..'),
      cancelOnError: true);*/
  // var sub = s1.listen((event) => print(event));
  var sub = s1.listen((_) =>_);

  // sub.onData((data) => print(data));
  sub.onData((data)
  {
    data< 10? print(data):sub.cancel();
  });
  sub.onDone(() {});
  sub.onError((error) => print(error));
}
