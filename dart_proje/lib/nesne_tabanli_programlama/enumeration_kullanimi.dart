import 'package:dart_proje_101/nesne_tabanli_programlama/konserve_boyut.dart';

void main(){
  //Enumaration, enum
  ucretHesapla(KonserveBoyut.orta, 20);
}
void ucretHesapla(KonserveBoyut boyut, int adet){
   switch (boyut) {
     case KonserveBoyut.kucuk:
       {
         print("Toplam maliyet: ${adet * 32}");
       }
       break;
     case KonserveBoyut.orta:
       {
         print("Toplam maliyet: ${adet * 35}");
       }
       break;
     case KonserveBoyut.buyuk:
       {
         print("Toplam maliyet: ${adet * 40 }");
       }
       break;
   }
}