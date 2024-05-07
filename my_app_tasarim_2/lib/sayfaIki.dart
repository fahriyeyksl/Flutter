import 'package:flutter/material.dart';

class SayfaIki extends StatefulWidget {
  const SayfaIki({super.key});

  @override
  State<SayfaIki> createState() => _SayfaIkiState();
}

class _SayfaIkiState extends State<SayfaIki> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Flaş Ürünler",
                     style: TextStyle(
                         color: Colors.orange,
                         fontSize: 35,
                         fontWeight: FontWeight.bold
                     ),
          ),
        ),
      ),
    body: Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("resimler/indirim1.jpg"),
              fit: BoxFit.cover,
            ),
          ) ,
        ),

        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20,),
                child: Text("Sadece 200 tl",style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              ElevatedButton(onPressed: (){

              },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.orange), // Butonun arka plan rengi
                ),
                  child: Text("Sepete Ekle",style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("resimler/indirim2.jpg"),
              fit: BoxFit.cover,
            ),
          ) ,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text("Sadece 300 tl",style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            ElevatedButton(onPressed: (){

            },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.orange), // Butonun arka plan rengi
              ),
              child: Text("Sepete Ekle",style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ],
    ),
    );

  }
}
