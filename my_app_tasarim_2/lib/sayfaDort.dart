import 'package:flutter/material.dart';

class SayfaDort extends StatefulWidget {
  const SayfaDort({super.key});

  @override
  State<SayfaDort> createState() => _SayfaDortState();
}

class _SayfaDortState extends State<SayfaDort> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Siparişlerim" ,
          style: TextStyle(color: Colors.orange,fontSize: 35,fontWeight: FontWeight.bold),),
        ),
      ),
      body: Column(
        children: [
         Container(
           alignment: Alignment.centerLeft, // Metni sola hizalar
           child: Text("Sipariş özeti",
                 style: TextStyle(color: Colors.grey,fontSize: 25,),
           ),
         ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("resimler/favori4.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Text(
                      "Düz Pembe Tişört",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  SizedBox(height: 8),
                  Text("Siparişiniz kargoya verildi",
                  style: TextStyle(color: Colors.grey,fontSize: 18) ,
                  ),
                ],
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
