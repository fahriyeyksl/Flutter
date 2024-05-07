import 'package:calisma_yapisi/ansayfa.dart';
import 'package:calisma_yapisi/bottom_kullanimi/bottom_navigation_sayfa.dart';
import 'package:calisma_yapisi/kullanici_etkilesimi/kullan%C4%B1m_etkilesimi_sayfa.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(


        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const KullaniciEtkilesimiSayfa(),
    );
  }
}

