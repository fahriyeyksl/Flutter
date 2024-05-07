import 'package:dart_proje_101/collections/ogrenciler.dart';

void main(){
  var o1 = Ogrenciler(ad: "zeynep", no: 200, sinif: "9C");
  var o2 = Ogrenciler(ad: "Ahmet", no: 300, sinif: "12Z");
  var o3 = Ogrenciler(ad: "Beyza", no: 100, sinif: "12A");
  var ogrencilerListesi = <Ogrenciler>[];
  ogrencilerListesi.add(o1);
  ogrencilerListesi.add(o2);
  ogrencilerListesi.add(o3);
  for(var o in ogrencilerListesi){
    print("No: ${o.no} - Ad: ${o.ad} - Sınıf: ${o.sinif}");
  }

  //Sorting (Sıralama)
  print("-"*100);
  print("Sayısaldan Küçükten büyüğe sıralama");
  Comparator<Ogrenciler> s1 = (x,y) => x.no.compareTo(y.no);
  ogrencilerListesi.sort(s1);
  for(var o in ogrencilerListesi){
    print("No: ${o.no} - Ad: ${o.ad} - Sınıf: ${o.sinif}");
  }
  print("-"*100);
  print("Sayısaldan Büyükten küçüğe sıralama");
  Comparator<Ogrenciler> s2 = (x,y) => y.no.compareTo(x.no);
  ogrencilerListesi.sort(s2);
  for(var o in ogrencilerListesi){
    print("No: ${o.no} - Ad: ${o.ad} - Sınıf: ${o.sinif}");
  }
  print("-"*100);
  print("Metinsel Küçükten büyüğe sıralama");
  Comparator<Ogrenciler> s3 = (x,y) => x.ad.compareTo(y.ad);
  ogrencilerListesi.sort(s3);
  for(var o in ogrencilerListesi){
    print("No: ${o.no} - Ad: ${o.ad} - Sınıf: ${o.sinif}");
  }

  //Filtreleme
  Iterable<Ogrenciler> f1 = ogrencilerListesi.where((ogrenciNesnesi) {
     return ogrenciNesnesi.no >100;
  });
  var liste1 = f1.toList();
  print("*"*100);
  print("Filtreleme işlemi 1");
  for(var o in liste1){
    print("No: ${o.no} - Ad: ${o.ad} - Sınıf: ${o.sinif}");
  }
  Iterable<Ogrenciler> f2 = ogrencilerListesi.where((ogrenciNesnesi) {
    return ogrenciNesnesi.ad.contains("y");
  });
  var liste2 = f2.toList();
  print("*"*100);
  print("Filtreleme işlemi 2");
  for(var o in liste2){
    print("No: ${o.no} - Ad: ${o.ad} - Sınıf: ${o.sinif}");
  }


}