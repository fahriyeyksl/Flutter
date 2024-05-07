import 'dart:collection';

void main(){

  //Tanımlama
  var sayilar = {"Bir":1, "İki":2};
  var iller = HashMap<int,String>();

  //Değer atama
  iller[16] = "Bursa";
  iller[34] = "İstanbul";


  //Güncelleme
  iller[16] = "Yeni Bursa";
  print(iller);


  String il = iller[34]!;
  print(il);

   print("Boyut: ${iller.length}");
   print("Boş kontrol: ${iller.isEmpty}");

   //Döngü ile çalışma
  var anahtarlar = iller.keys;
  for (var a in anahtarlar){
    print("$a -> ${iller[a]}");
  }
  iller.remove(16);
  print(iller);
  iller.clear();
  print(iller);
}