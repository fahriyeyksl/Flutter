import 'package:dart_proje_101/nesne_tabanli_programlama/fonksiyonlar.dart';

void main(){
  var f = Fonksiyonlar();
  f.selamla1();
  String gelensonuc = f.selamla2();
  print(gelensonuc);
  f.selamla3("fahriye");
 //Dart dilinde overloading kavramı yer almıyor.
  //Overloading: Sınıf içerisinde bir metodun adıını tekrar kullanmak.
}