class Araba{
  String renk;
  int hiz;
  bool calisiyorMu;
  //Constructor , init metodu :
  Araba({required this.renk,required  this.hiz,required this.calisiyorMu});
  void calistir(){ //Shite efekt : Yan etki
    calisiyorMu = true;
    hiz = 5;
  }
  void durdur(){
    calisiyorMu = false;
    hiz = 0;
  }
  void hizlan(int kacKm){
    hiz+=kacKm; //hiz = hiz + kaçkaçKM;
  }
  void yavaasla(int kacKm){
    hiz-=kacKm;
  }
  void bilgiAl(){
    print("-"*50);
    print("Renk: ${renk}");
    print("Hız: ${hiz}");
    print("Çalışıyor mu: ${calisiyorMu}");
  }
}