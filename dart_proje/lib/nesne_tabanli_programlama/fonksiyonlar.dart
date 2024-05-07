import 'package:flutter/cupertino.dart';

class Fonksiyonlar{
  //void: geri dönüş değeri olmayan
  void selamla1(){
    String sonuc = "Merhaba Ahmet";
    print(sonuc);
  }
  String selamla2(){
    String sonuc = "Merhaba Ahmet";
    return sonuc;
  }
  void selamla3(String isim){
    String sonuc = "Merhaba $isim";
    print(sonuc);
  }

}