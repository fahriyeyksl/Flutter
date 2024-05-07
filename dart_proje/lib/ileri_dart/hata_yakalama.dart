void main(){
  // 1.Compile error
  String x = "Hello";
  //x = 100;

  // 2.Runtine exception (error)
  var liste = <String>[];
  liste.add("Ahmet");
  liste.add("Zeynep");
  String isim = liste[0];
  print("Gelen isim: $isim");


  try{
    String isim = liste[3];
    print("Gelen isim: $isim");
  }catch(e){
    print("Listenin boyutunu aştınız");
  }


}