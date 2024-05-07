import 'package:flutter/material.dart';

void main() {
  runApp(const OgrenciApp());
}

class OgrenciApp extends StatelessWidget {
  const OgrenciApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Öğrenci Uygulaması',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
        // useMaterial3: true, // Material 3.0 henüz yaygın olarak kullanılmıyor, bu satırı kaldırabilirsiniz.
      ),
      home: const AnaSayfa(title: 'Öğrenci Ana Sayfa'),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  final String title;

  const AnaSayfa({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Buraya sayfa içeriğini ekleyebilirsiniz.
          ],
        ),
      ),
    );
  }
}
