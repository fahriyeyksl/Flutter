void main(){
  //Tanımlama
  var plakalar = [16,23,6];
  var meyveleer = <String>[];
  //Veri ekleme
  meyveleer.add("muz");
  meyveleer.add("kiraz");
  meyveleer.add("elma");
  print(meyveleer);

  //Güncelleme
  meyveleer[2] = "çilek";
  //Insert
  meyveleer.insert(1, "portakal");
  print(meyveleer);

  //veri okuma
  String meyve = meyveleer[0];
  print(meyve);

  print("boyut: ${meyveleer.length}");
  print("boş kontrol : ${meyveleer.isEmpty}");


  //for each
  for(var meyve in meyveleer){
    print("sonuc: ${meyve}");
  }

  for(var i =0; i<meyveleer.length;i++){
    print(meyveleer[i]);
  }

  var liste = meyveleer.reversed.toList();
  print(liste);

  meyveleer.sort();
  print(meyveleer);

  meyveleer.removeAt(1);
  print(meyveleer);

  meyveleer.clear();
  print(meyveleer);
}