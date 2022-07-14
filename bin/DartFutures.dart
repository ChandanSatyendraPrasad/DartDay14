void main() {
// final f1= Future((){print(2);});
//final f1= Future(()=>print(2));
//final f1= Future(info);
//final Future<double> f1= Future(info);
  final f1 = Future(info);
  f1.then((value) => print(value)).catchError((onError)=>print(onError));
  print(1);

  final f2 = Future.value(3);
  f2.then((value) => print(value));

  final f3=Future.delayed(Duration(seconds: 1),inform);
  final f4=Future.delayed(Duration(seconds: 5),()=>print(9));
  print(1);
}

/*info()
{
  print(2);
}*/
double info() {
  return 2.34;
}
inform()
{
  print(67);
}