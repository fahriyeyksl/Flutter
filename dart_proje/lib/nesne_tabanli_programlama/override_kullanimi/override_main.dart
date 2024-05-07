import 'package:dart_proje_101/nesne_tabanli_programlama/override_kullanimi/hayvan.dart';
import 'package:dart_proje_101/nesne_tabanli_programlama/override_kullanimi/kedi.dart';
import 'package:dart_proje_101/nesne_tabanli_programlama/override_kullanimi/kopek.dart';
import 'package:dart_proje_101/nesne_tabanli_programlama/override_kullanimi/memeli.dart';

void main(){
  var hayvan = Hayvan();
  var memeli = Mememli();
  var kedi = Kedi();
  var kopek = Kopek();
  hayvan.sesCikar(); //kalıtım yok kendi methoduna erişti
  memeli.sesCikar(); //kalıtım var kendi fonksiyonu yok üst sınıfın methoduna erişti
  kedi.sesCikar();  //kalıtım var kendi methoduna erişti
  kopek.sesCikar(); //kalıtım var kendi methoduna erişti




}