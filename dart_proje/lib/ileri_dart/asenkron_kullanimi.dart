Future <void> main() async{
  print("Verilerin alınması bekleniyor");
  var veri = await veritbanindanVeriAl();
  print("Alınan veri: $veri");


}

Future<String> veritbanindanVeriAl() async{
  for(var i=1;i<6;i++){
    Future.delayed(Duration(seconds: i),() => print("Veri miktari: %${i*20}"));
  }
  return Future.delayed(Duration(seconds: 5),() => "Merhaba");
}