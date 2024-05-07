import 'package:dart_proje_101/nesne_tabanli_programlama/araba.dart';

void main(){
  //Nesne oluşturma
  var bmw = Araba(renk: "siyah", hiz: 100, calisiyorMu: true);
  /*
  print("-"*50);
  print("Renk: ${bmw.renk}");
  print("Hız: ${bmw.hiz}");
  print("Çalışıyor mu: ${bmw.calisiyorMu}");
  //Değer atama
  bmw.renk = "kırmızı";
  bmw.hiz = 0;
  bmw.calisiyorMu = false;
  print("-"*50);
  print("Renk: ${bmw.renk}");
  print("Hız: ${bmw.hiz}");
  print("Çalışıyor mu: ${bmw.calisiyorMu}");
  print("-"*50);
  */
  print("Bmw bilgi");
  bmw.bilgiAl();
  print("Bmw durdur");
  bmw.durdur();
  bmw.bilgiAl();
  bmw.calistir();
  bmw.hizlan(100);
  bmw.bilgiAl();
  var sahin = Araba(renk: "beyaz", hiz: 0, calisiyorMu: false);
  sahin.bilgiAl();
  sahin.calistir();
  sahin.hizlan(50);
  sahin.bilgiAl();
  sahin.yavaasla(20);
  sahin.bilgiAl();
  /*
  print("-"*50);
  print("Renk: ${sahin.renk}");
  print("Hız: ${sahin.hiz}");
  print("Çalışıyor mu: ${sahin.calisiyorMu}");
  sahin.renk = "Sarı";
  sahin.hiz = 150;
  sahin.calisiyorMu = true;
  print("-"*50);
  print("Renk: ${sahin.renk}");
  print("Hız: ${sahin.hiz}");
  print("Çalışıyor mu: ${sahin.calisiyorMu}");
*/
  
}