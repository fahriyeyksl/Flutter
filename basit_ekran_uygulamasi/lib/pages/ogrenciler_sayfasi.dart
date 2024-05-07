import 'package:flutter/material.dart';

class OgrencilerSayfasi extends StatefulWidget {
  const OgrencilerSayfasi({super.key});

  @override
  State<OgrencilerSayfasi> createState() => _OgrencilerSayfasiState();
}

class _OgrencilerSayfasiState extends State<OgrencilerSayfasi> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBar(title: const Text("Öğrenciler")),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 32.0),
            child: const Text(
              "10 Öğrenci"
            ),
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => ListTile(
                    title: Text("Ali"),
                  ),
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: 5,
              ),

          )
        ],
      ),
    );

  }
}
