void main() async {
  // Way 1
  /*
  Future.delayed(Duration(seconds: 1),()=>2)
      .then((value) => print('Value = $value'))
      .catchError((onError)=>print('Error = $onError'));
  print('value = 1');

  final s1 = Stream.periodic(Duration(milliseconds: 500), (a) => a);
  var sub = s1.listen((_) =>_);
  sub.onData((data)
  {
    data < 10 ? print(data):sub.cancel();
  });
  sub.onDone(() {});
  sub.onError((error) => print(error));*/
  //Way 2
  final f1 = Future.delayed(Duration(seconds: 1), () => 2)
      .then((value) => print('Value = $value'))
      .catchError((onError) => print('Error = $onError'));
  print('value = 1');
  try {
    final value = await Future.delayed(Duration(seconds: 1), () => 2);
    print(value);
  } catch (e) {
    print('Error  = $e');
  }
  print('1');
  final s1 = Stream.periodic(Duration(milliseconds: 500), (a) => a);
  var sub = s1.listen((_) => _);
  sub.onData((data) {
    data < 10 ? print(data) : sub.cancel();
  });
  sub.onDone(() {});
  sub.onError((error) => print(error));
}
