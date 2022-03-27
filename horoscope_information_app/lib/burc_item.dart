import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'burc_detay.dart';
import 'controller/background_controller.dart';
import 'model/burc.dart';
import 'package:get/get.dart';

class BurcItem extends StatelessWidget {
  final Burc usedItem;
  BackgroundController bcc = Get.put(BackgroundController());
  BurcItem({required this.usedItem, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.all(4),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListTile(
            onTap: () {
              Get.to(BurcDetay(
                selected: usedItem,
              ));
            },
            leading: Image.asset(
              "images/" + usedItem.burcKucukResim,
            ),
            title: Text(
              usedItem.burcAdi,
              style: myTextStyle.headline5,
            ),
            subtitle: Text(
              usedItem.burcTarihi,
              style: myTextStyle.subtitle1,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
