void main(){
  //1,2,3
  for(int i=1;i<4;i++){
    print(i);
  }
  int j=1;
  while(j<4) {
    print(j);
    j++;
  }

  //10 ilw 20 arasında çalışan vve 5er 5 er artan döngü
  int a=10;
  while(a<21){
    print(a);
    a+=5;
  }
  print("For döngüsü");
  for(int x=10;x<21;x+=5){
    print(x);
  }
  print("40tan 30a kadar 5er 5er azalan döngüler");
  for(int i=40;i>29;i-=5){
    print(i);
  }
}