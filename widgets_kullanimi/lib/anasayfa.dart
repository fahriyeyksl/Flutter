import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var tfController = TextEditingController();
  String alinanVeri = "";
  String resimadi = "baklava.png";
  bool swiftkontrol = false;
  bool checkboxkontrol = false;
  int radiodeger = 0;
  bool progresskontrol = false;
  double ilerleme = 30.0;
  var tfSaat = TextEditingController();
  var tfTarih = TextEditingController();
  var ulkelerListesi = <String>[];
  String secilenUlke = "Türkiye";
  @override
  void initState() {
    super.initState();
    ulkelerListesi.add("Türkiye");
    ulkelerListesi.add("Amerika");
    ulkelerListesi.add("Japonya");

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widgets"),),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(alinanVeri),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(controller: tfController,
                  decoration: const InputDecoration(hintText: "veri"),
                  keyboardType: TextInputType.number,
                  obscureText: true,
                ),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  alinanVeri = tfController.text;
                });
              }, child: const Text("veriyi al")),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        resimadi = "pizza.png";
                      });
                    },
                    child: const Text("Resim 1"),
                  ),
                  SizedBox(
                    width: 52,
                    height: 52,
                    child: Image.network("http://kasimadalan.pe.hu/yemekler/resimler/$resimadi"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        resimadi = "kofte.png";
                      });
                    },
                    child: const Text("Resim 2"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 200,
                    child: SwitchListTile( // Switch butonu
                      title: Text("Dart"),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: swiftkontrol,
                        onChanged:(veri){
                       setState(() {
                         swiftkontrol = veri;
                       });
                        }
        
                    ),
                  ),
                  SizedBox(width: 200,
                    child: CheckboxListTile( //checkbox butonu
                        title: Text("Flutter"),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: checkboxkontrol,
                        onChanged:(veri){
                          setState(() {
                            checkboxkontrol = veri!;
                          });
                        }
        
                    ),
                  ),
        
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 200,
                    child: RadioListTile( // Switch butonu
                        title: Text("Barcelona"),
                        value: 1,
                        groupValue: radiodeger,
                        onChanged:(veri){
                          setState(() {
                            radiodeger = veri!;
                          });
                        }
        
                    ),
                  ),
                  SizedBox(width: 200,
                    child: RadioListTile( // Switch butonu
                        title: Text("Real Madrid"),
                        value: 2,
                        groupValue: radiodeger,
                        onChanged:(veri){
                          setState(() {
                            radiodeger = veri!;
                          });
                        }
        
                    ),
                  ),
        
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        progresskontrol = true;
                      });
                    },
                    child: const Text("Başla"),
                  ),
                  Visibility(visible: progresskontrol,child: const CircularProgressIndicator()),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        progresskontrol = false;
                      });
                    },
                    child: const Text("Dur"),
                  ),
                ],
              ),
              Text(ilerleme.toInt().toString()),
              Slider(max:100.0, min:0.0, value: ilerleme, onChanged: (veri){
                    setState(() {
                      ilerleme = veri;
                    });
              }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 120,
                    child: TextField(
                      controller: tfSaat,
                      decoration: const InputDecoration(hintText: "saat"),
                    ),
                  ),
                  IconButton(onPressed:(){
                    showTimePicker(context: context, initialTime: TimeOfDay.fromDateTime(DateTime.now()))
                    .then((value) {
                      tfSaat.text = "${value!.hour} : ${value.minute}";
                    } );
                  },
                      icon: const Icon(Icons.access_time) ),
                  SizedBox(width: 120,
                    child: TextField(
                      controller: tfTarih,
                      decoration: const InputDecoration(hintText: "tarih"),
                    ),
                  ),
                  IconButton(onPressed:(){
                    showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2030))
                    .then((value) {
                      tfTarih.text = "${value!.day}/ ${value!.month}/ ${value!.year}";
                    });
                  },
                      icon: const Icon(Icons.access_time) )
                ],
              ),
              DropdownButton(
                  value: secilenUlke,
                  icon: const Icon(Icons.arrow_drop_down),
                  items: ulkelerListesi.map((ulke) { //map, listemiz varsa sıra ile getirmemizi sağlar
                    return DropdownMenuItem(value: ulke, child: Text(ulke),);
                  }).toList() ,
                  onChanged: (veri){
                    setState(() {
                      secilenUlke = veri!;
                    });
                  }
              ),
              GestureDetector( // görsele tıklama
                onTap: (){
                  print("Container tek tıklandı");
                },
                  onDoubleTap: (){
                   print("Container çift tıklandı");
                  },
                  onLongPress: (){
                   print("Container üzerine uzun basıldı");
                  },
                child: Container(width: 200, height: 100,color: Colors.red)
                ),
              ElevatedButton(
                onPressed: () {
                  print("switch kontrol: $swiftkontrol");
                  print("checkbox kontrol: $checkboxkontrol");
                  print("radio deger kontrol: $radiodeger");
                  print("ilerleme: $ilerleme");
                  print("Ülke durumu: $secilenUlke");
                },
                child: const Text("Göster"),
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}
