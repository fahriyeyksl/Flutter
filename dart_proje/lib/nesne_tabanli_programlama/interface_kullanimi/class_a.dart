import 'package:dart_proje_101/nesne_tabanli_programlama/interface_kullanimi/myinterface.dart';

class ClassA implements Myinterface{
  @override
  int degisken = 10;

  @override
  void method1() {
    print("method 1 çalıştı");
  }

  @override
  String metod2() {
    return "metod 2 çalıştı";
  }

}