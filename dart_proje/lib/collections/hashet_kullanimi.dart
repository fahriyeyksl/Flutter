import 'dart:collection';

void main(){
  // Tanımlama
  var plakalar = HashSet.from([16,23,6]);
  var meyveler = HashSet<String>();
  // Değer atama
  meyveler.add("kiraz");
  meyveler.add("muz");
  meyveler.add("elma");

  print(meyveler);


  String meyve = meyveler.elementAt(2);
  print(meyve);
  print(meyveler.length);
  print("boş kontrol : ${meyveler.isEmpty}");

  for (var meyve in meyveler){
    print("sonuç: ${meyve}");
  }

  for (var i=0;i<meyveler.length;i++){
    print("${i}: ${meyve}");
  }


  meyveler.remove("elma");
  print(meyveler);
  meyveler.clear();
  print(meyveler);
}