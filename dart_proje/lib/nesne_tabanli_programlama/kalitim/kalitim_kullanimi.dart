import 'package:dart_proje_101/nesne_tabanli_programlama/kalitim/Ev.dart';
import 'package:dart_proje_101/nesne_tabanli_programlama/kalitim/saray.dart';
import 'package:dart_proje_101/nesne_tabanli_programlama/kalitim/villa.dart';

void main(){
  var topkapiSarayi = Saray(kula_sayisi: 10, pencere_sayisi: 300);
  print(topkapiSarayi.kula_sayisi);
  print(topkapiSarayi.pencere_sayisi);
  var bogazVilla = Villa(garajVarmi: true, pencere_sayisi: 50);
  print(bogazVilla.garajVarmi);
  print(bogazVilla.pencere_sayisi);

  //Upcasting and Dowcaasting 
  //Tip kontrolü
  
  if(topkapiSarayi is Saray){
    print("saraydır");
  }else{
    print("saray değildir");
  }
  print("*"*100);
  if(bogazVilla is Villa){ //instance
    print("villadır");
  }else{
    print("villa değildir");
  }
  print("*"*100);
  if (topkapiSarayi is Ev){
    print("topkapı sarayı evdir");
  }else {
    print("ev değildir");
  }
  // DOWCASTİNG
  var ev = Ev(pencere_sayisi: 10);
  var saray = ev as Saray;

  //UPCASTİNG
  var s = Saray(kula_sayisi: 3, pencere_sayisi: 100);
  Ev e = s;


}