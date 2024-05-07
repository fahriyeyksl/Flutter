import 'package:dart_proje_101/nesne_tabanli_programlama/kalitim/Ev.dart';

class Saray extends Ev{
  int kula_sayisi;

  Saray({required this.kula_sayisi , required int pencere_sayisi}) : super(pencere_sayisi: pencere_sayisi);
}