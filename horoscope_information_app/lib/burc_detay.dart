import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/background_controller.dart';
import 'model/burc.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatelessWidget {
  final Burc selected;
  BackgroundController bcc = Get.find();
  BurcDetay({required, required this.selected, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: bcc.backgorund,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(selected.burcAdi + " Burcu ve Özellikleri"),
              centerTitle: true,
              background: Image.asset(
                "images/" + selected.burcBuyukResim,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: SingleChildScrollView(
                  child: Text(
                selected.burcDetay,
                style: Theme.of(context).textTheme.subtitle1,
              )),
            ),
          )
        ],
      ),
    );
  }
}
