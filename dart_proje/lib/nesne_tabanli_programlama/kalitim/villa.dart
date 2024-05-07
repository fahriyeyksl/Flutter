import 'package:dart_proje_101/nesne_tabanli_programlama/kalitim/Ev.dart';

class Villa extends Ev{
  bool garajVarmi;

  Villa({required this.garajVarmi, required int pencere_sayisi}) : super(pencere_sayisi: pencere_sayisi);
}