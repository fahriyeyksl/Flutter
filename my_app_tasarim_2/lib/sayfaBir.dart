import 'package:flutter/material.dart';

class SayfaBir extends StatefulWidget {
  const SayfaBir({Key? key}) : super(key: key);

  @override
  State<SayfaBir> createState() => _SayfaBirState();
}

class _SayfaBirState extends State<SayfaBir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Anasayfa",
            style: TextStyle(
                color: Colors.orange,
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                      width: 150, // Ekran genişliğinin yarısı kadar genişlik
                      height: 100, // Sabit yükseklik
                      decoration: BoxDecoration(
                         image: DecorationImage(
                         image: AssetImage('resimler/gorsel_2.jpg'), // Arka plan resminin yolu
                         fit: BoxFit.cover, // Resmi konteynıra sığdır
                    ),
                  ),
                            ),
              ),

              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: 150, // Ekran genişliğinin yarısı kadar genişlik
                  height: 100, // Sabit yükseklik
                  decoration: BoxDecoration(
                      image: DecorationImage(
                      image: AssetImage('resimler/gorsel_1.jpg'), // Arka plan resminin yolu
                      fit: BoxFit.cover, // Resmi konteynıra sığdır
                    ),
                  ),
                ),
              ),
         ],
       ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: 150, // Ekran genişliğinin yarısı kadar genişlik
                  height: 100, // Sabit yükseklik
                  decoration: BoxDecoration(
                      image: DecorationImage(
                      image: AssetImage('resimler/gorsel_3.jpg'), // Arka plan resminin yolu
                      fit: BoxFit.cover, // Resmi konteynıra sığdır
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: 150, // Ekran genişliğinin yarısı kadar genişlik
                  height: 100, // Sabit yükseklik
                  decoration: BoxDecoration(
                      image: DecorationImage(
                      image: AssetImage('resimler/gorsel_4.jpg'), // Arka plan resminin yolu
                      fit: BoxFit.cover, // Resmi konteynıra sığdır
                    ),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
