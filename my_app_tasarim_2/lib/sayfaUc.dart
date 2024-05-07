import 'package:flutter/material.dart';

class SayfaUc extends StatefulWidget {
  const SayfaUc({super.key});

  @override
  State<SayfaUc> createState() => _SayfaUcState();
}

class _SayfaUcState extends State<SayfaUc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Favoriler",
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
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Sol taraftaki fotoğraf
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('resimler/favori1.jpg'), // Fotoğrafın yolunu belirtin
                        fit: BoxFit.cover, // Fotoğrafın boyutunu ayarla
                      ),
                      borderRadius: BorderRadius.circular(8.0), // Fotoğrafın kenarlarını yuvarla
                    ),
                  ),
                ),
                // Sağ taraftaki ürün açıklaması ve artı butonu
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Plazzo Pantalon',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8), // Boşluk ekleyin
                      Text(
                        'Gri renkte bol plazzo pantalon ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                // Artı butonu
                IconButton(
                  icon: Icon(Icons.add_circle_outline), // Artı simgesi
                  onPressed: () {
                    // Butona basıldığında yapılacak işlemler
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Sol taraftaki fotoğraf
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('resimler/favori2.jpg'), // Fotoğrafın yolunu belirtin
                        fit: BoxFit.cover, // Fotoğrafın boyutunu ayarla
                      ),
                      borderRadius: BorderRadius.circular(8.0), // Fotoğrafın kenarlarını yuvarla
                    ),
                  ),
                ),
                // Sağ taraftaki ürün açıklaması ve artı butonu
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Yazlık Elbise',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8), // Boşluk ekleyin
                      Text(
                        'Çiçekli Mini Elbise ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                // Artı butonu
                IconButton(
                  icon: Icon(Icons.add_circle_outline), // Artı simgesi
                  onPressed: () {
                    // Butona basıldığında yapılacak işlemler
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Sol taraftaki fotoğraf
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('resimler/favori3.jpg'), // Fotoğrafın yolunu belirtin
                        fit: BoxFit.cover, // Fotoğrafın boyutunu ayarla
                      ),
                      borderRadius: BorderRadius.circular(8.0), // Fotoğrafın kenarlarını yuvarla
                    ),
                  ),
                ),
                // Sağ taraftaki ürün açıklaması ve artı butonu
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Yazılı Pembe Tişört',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8), // Boşluk ekleyin
                      Text(
                        'Yazılı Pembe Tişört ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                // Artı butonu
                IconButton(
                  icon: Icon(Icons.add_circle_outline), // Artı simgesi
                  onPressed: () {
                    // Butona basıldığında yapılacak işlemler
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Sol taraftaki fotoğraf
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('resimler/favori4.jpg'), // Fotoğrafın yolunu belirtin
                        fit: BoxFit.cover, // Fotoğrafın boyutunu ayarla
                      ),
                      borderRadius: BorderRadius.circular(8.0), // Fotoğrafın kenarlarını yuvarla
                    ),
                  ),
                ),
                // Sağ taraftaki ürün açıklaması ve artı butonu
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Düz Tişört',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8), // Boşluk ekleyin
                      Text(
                        'Düz Pembe Tişört ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                // Artı butonu
                IconButton(
                  icon: Icon(Icons.add_circle_outline), // Artı simgesi
                  onPressed: () {
                    // Butona basıldığında yapılacak işlemler
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
