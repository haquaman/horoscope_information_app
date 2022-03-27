import 'package:flutter/material.dart';
import 'package:horoscope_information_app/data/strings.dart';
import 'package:horoscope_information_app/burc_item.dart';
import 'package:get/get.dart';
import 'controller/background_controller.dart';
import 'model/burc.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;

  BurcListesi() {
    tumBurclar = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Burc Listesi")),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return BurcItem(
              usedItem: tumBurclar[index],
            );
          },
          itemCount: tumBurclar.length,
        ),
      ),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> tempList = [];
    for (int i = 0; i < 12; i++) {
      String foto = Strings.BURC_ADLARI[i].toLowerCase() + ".jpg";
      String Buyukfoto = Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk.jpg";
      Burc addBurc = Burc(Strings.BURC_ADLARI[i], Strings.BURC_TARIHLERI[i],
          Strings.BURC_GENEL_OZELLIKLERI[i], foto, Buyukfoto);
      tempList.add(addBurc);
    }
    return tempList;
  }
}
