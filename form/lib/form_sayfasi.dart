import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormSayfasi extends StatefulWidget {
  const FormSayfasi({super.key});

  @override
  State<FormSayfasi> createState() => _FormSayfasiState();
}

class _FormSayfasiState extends State<FormSayfasi> {
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController telController = TextEditingController();
  TextEditingController katilimbilgiController = TextEditingController();
  var tfTarih = TextEditingController();
  String name = "";
  String surname = "";
  String email = "";
  var sehirListesi = <String>[];
  String secilenSehir = "İstanbul";
  int radiodeger = 0;

  @override
  void initState() {
    super.initState();
    sehirListesi.add("İstanbul");
    sehirListesi.add("İzmir");
    sehirListesi.add("Ankara");
    sehirListesi.add("Aydın");
    sehirListesi.add("Sivas");
    sehirListesi.add("Muğla");
    sehirListesi.add("Kocaeli");
    sehirListesi.add("Tekirdağ");
    sehirListesi.add("Antalya");
    sehirListesi.add("Bursa");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Bootcamp Başvuru Formu"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Name giriş
            Text(name),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(controller: nameController,
                decoration: const InputDecoration(hintText: "Adınızı giriniz"),
                keyboardType: TextInputType.name,
                obscureText: false,
              ),
            ),
            //Surname giriş
            Text(surname),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(controller: surnameController,
                decoration: const InputDecoration(hintText: "Soyadınızı giriniz"),
                keyboardType: TextInputType.name,
                obscureText: false,
              ),
            ),
            //Email giriş
            Text(email),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(controller: emailController,
                decoration: const InputDecoration(hintText: "email adresinizi giriniz"),
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
              ),
            ),
            //Telefon giriş
            Text(email),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(controller: telController,
                decoration: const InputDecoration(hintText: "telefon numaranız"),
                keyboardType: TextInputType.number,
                obscureText: false,
              ),
            ),
            //Birthday giriş
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                SizedBox(width: 120,
                  child: TextField(
                    controller: tfTarih,
                    decoration: const InputDecoration(hintText: "Doğum tarihinizi giriniz"),
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
          ),
          // ÜLKE SEÇİMİ
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lütfen yaşadığınız ili seçin:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8), // Biraz boşluk ekleyelim
                  Row(
                    children: [
                      DropdownButton(
                        value: secilenSehir,
                        icon: const Icon(Icons.arrow_drop_down),
                        items: sehirListesi.map((sehir){
                          return DropdownMenuItem(value: sehir, child: Text(sehir),);
                        }).toList(),
                        onChanged: (veri){
                          setState(() {
                            secilenSehir = veri!;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Lütfen eğitim durumunuzu seçin',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10), // İstenirse boşluk eklenebilir
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 200,
                  child: RadioListTile(
                    title: Text("Üniversite Mezun",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                    value: 1,
                    groupValue: radiodeger,
                    onChanged: (veri) {
                      setState(() {
                        radiodeger = veri!;
                      });
                    },
                  ),
                ),
                // İstenirse aralara boşluk eklenebilir
                SizedBox(
                  width: 200,
                  child: RadioListTile(
                    title: Text("Lise Mezun",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                    value: 2,
                    groupValue: radiodeger,
                    onChanged: (veri) {
                      setState(() {
                        radiodeger = veri!;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 10), // İstenirse boşluk eklenebilir
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 200,
                  child: RadioListTile(
                    title: Text("Yüksek Lisans Mezun",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                    value: 3,
                    groupValue: radiodeger,
                    onChanged: (veri) {
                      setState(() {
                        radiodeger = veri!;
                      });
                    },
                  ),
                ),
                // İstenirse aralara boşluk eklenebilir
                SizedBox(
                  width: 200,
                  child: RadioListTile(
                    title: Text("Doktora Mezun",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                    value: 4,
                    groupValue: radiodeger ,
                    onChanged: (veri) {
                      setState(() {
                        radiodeger = veri!;
                      });
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Neden bu programa katılmak istiyorsunuz kısaca bahseder misiniz?',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
            Container(
              height: 100,
              color: Colors.white30,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: TextField(
                  controller: katilimbilgiController,
                  keyboardType: TextInputType.text,
                  obscureText: false,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    print("İsim kontrol: $nameController");
                    print("Soyad kontrol: $surnameController");
                    print("Email kontrol: $emailController");
                    print("Telefon kontrol: $telController");
                    print("Şehir durumu: $secilenSehir");
                    print("Doğum tarihi durumu: $tfTarih");
                    print("Eğitim durumu: $radiodeger");
                    print("Katılım bilgi durumu: $katilimbilgiController");
                  },
                  child: const Text("Gönder"),
                ),
              ),
            ),
          ],
        ),
        ],
      ),
      ),

    );
  }
}
