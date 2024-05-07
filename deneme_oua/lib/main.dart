import 'package:flutter/material.dart';

void main() {
  runApp(EticaretUygulamasi());
}

class EticaretUygulamasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Ticaret Uygulaması',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ana Sayfa'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hoş Geldiniz!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UrunlerSayfasi()),
                );
              },
              child: Text('Ürünleri Göster'),
            ),
          ],
        ),
      ),
    );
  }
}

class UrunlerSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ürünler'),
      ),
      body: ListView.builder(
        itemCount: 10, // Örnek olarak 10 ürün
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Ürün ${index + 1}'),
            subtitle: Text('Ürün açıklaması, fiyatı vb.'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UrunDetaySayfasi()),
              );
            },
          );
        },
      ),
    );
  }
}

class UrunDetaySayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ürün Detayı'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Ürün Adı',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            Text(
              'Ürün açıklaması, özellikleri, fiyatı vb.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Ürünü sepete ekleme işlemi
              },
              child: Text('Sepete Ekle'),
            ),
          ],
        ),
      ),
    );
  }
}
