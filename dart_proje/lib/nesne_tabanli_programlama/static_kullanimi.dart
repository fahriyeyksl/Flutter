import 'package:dart_proje_101/nesne_tabanli_programlama/a_sinifi.dart';

void main() {
  var a = Asinifi();
  // Standart kullanımı
  // print(a.degisken);
  // a.method();

  //Sanal nesne - isimsiz nesne
  // print(Asinifi().degisken); // 1.nesne
  // Asinifi().method(); // 2.nesne

  //Static kullanımı
  print(Asinifi.degisken);
  Asinifi.method();

}