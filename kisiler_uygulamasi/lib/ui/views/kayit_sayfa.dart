import 'package:flutter/material.dart';

class KayitSayfasi extends StatefulWidget {
  const KayitSayfasi({super.key});

  @override
  State<KayitSayfasi> createState() => _KayitSayfasiState();
}

class _KayitSayfasiState extends State<KayitSayfasi> {
  var tfKisiAdi = TextEditingController();
  var tfKisiTel = TextEditingController();

  Future<void> kaydet(String kisi_ad, String kisi_tel) async{
    print("Kişi Kaydet : $kisi_ad - $kisi_tel");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kayıt Sayfa"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(controller: tfKisiAdi, decoration: const InputDecoration(hintText: "Kişi Ad"),),
              TextField(controller: tfKisiTel, decoration: const InputDecoration(hintText: "Kişi Tel"),),
              ElevatedButton(onPressed: (){
                kaydet(tfKisiAdi.text, tfKisiTel.text);
              }, child: const Text("KAYDET"))
            ],
          ),
        ),
      ),
    );
  }
}
