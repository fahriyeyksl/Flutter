import 'package:dart_proje_101/nesne_tabanli_programlama/composition/filmler.dart';
import 'package:dart_proje_101/nesne_tabanli_programlama/composition/kategoriler.dart';
import 'package:dart_proje_101/nesne_tabanli_programlama/composition/yonetmenler.dart';

void main() {
  var k1 = Kategoriler(kategori_ad: "Dram", kategori_id: 1);
  var k2 = Kategoriler(kategori_ad: "Kurgu", kategori_id: 2);
  var y1 = Yonetmenler(yonetmen_ad: "quentin tarantino", yonetmen_id: 1);
  var y2 = Yonetmenler(yonetmen_ad: "Christopher nolan", yonetmen_id: 2);
  
  var f1 = Filmler(film_id: 1, film_adi: "Django", film_yili: 2013, kategori: k1, yonetmen: y1);

  print("Film id: ${f1.film_id}");
  print("Film ad: ${f1.film_adi}");
  print("Film yıl: ${f1.film_yili}");
  print("Film kategori: ${f1.kategori.kategori_ad}");
  print("Film yönetmen: ${f1.yonetmen.yonetmen_ad}");



}