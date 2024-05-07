import 'package:flutter/material.dart';
import 'package:my_app_tasarim_2/sayfaBir.dart';
import 'package:my_app_tasarim_2/sayfaIki.dart';
import 'package:my_app_tasarim_2/sayfaUc.dart';
import 'package:my_app_tasarim_2/sayfaDort.dart';
import 'package:my_app_tasarim_2/sayfaBes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false, //debug yazısını kaldırmak için
      home: SayfalarArasiGecis(),
    );
  }
}

class SayfalarArasiGecis extends StatefulWidget{
  const SayfalarArasiGecis({Key? key}) : super(key: key);


  @override
  State<SayfalarArasiGecis> createState() => _SayfalarArasiGecisState();
}

class _SayfalarArasiGecisState extends State<SayfalarArasiGecis> {
  int secilenIndex = 0;
  var sayfalar = [
    const SayfaBir(),
    const SayfaIki(),
    const SayfaUc(),
    const SayfaDort(),
    const SayfaBes()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: sayfalar[secilenIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_sharp),label: "Anasayfa"),
          BottomNavigationBarItem(icon: Icon(Icons.add_alert_sharp),label: "Flaş"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favoriler"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box),label: "Sipariş"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label: "Profil")
        ],
        currentIndex: secilenIndex,
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black54,
        onTap: (indeks){
          setState(() {
            secilenIndex = indeks;
          });
        },
      ),
    );
  }
}
