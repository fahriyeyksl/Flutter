import 'package:flutter/material.dart';

class SayfaBes extends StatefulWidget {
  const SayfaBes({super.key});

  @override
  State<SayfaBes> createState() => _SayfaBesState();
}

class _SayfaBesState extends State<SayfaBes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Profil",
          style: TextStyle(color: Colors.orange,fontSize: 25,fontWeight: FontWeight.bold,) ,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("resimler/profil.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch, // Tüm widget'ların genişliğini satırın genişliğine genişletir
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Center(child: Text("Ad Soyad:Fahriye Yüksel",style: TextStyle(fontSize: 15),)),
                  ),
                  SizedBox(height: 8),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Center(child: Text("Boy/Kilo: 163-51 ",style: TextStyle(fontSize: 15),)),
                  ),
                  SizedBox(height: 8),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Center(child: Text("Boy/Kilo: 163-51 ",style: TextStyle(fontSize: 15),)),
                  ),
                  SizedBox(height: 8), // Bir boşluk ekleyerek iki metin arasında boşluk bırakın

                ],
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {},
              child: Text("Kaydet"),
            ),


          ],
        ),
      ),
    );
  }
}
