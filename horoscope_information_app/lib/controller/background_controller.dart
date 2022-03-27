import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palette_generator/palette_generator.dart';

import '../model/burc.dart';

class BackgroundController extends GetxController {
  var _backgorund = Colors.purple.obs;

  get backgorund => _backgorund.value;

  set backgorund(deger) => _backgorund.value = deger;

  Future<Color> changeBackground(Burc b) async {
    PaletteGenerator _generator = await PaletteGenerator.fromImageProvider(
        AssetImage("images/" + b.burcBuyukResim));
    backgorund(_generator.dominantColor!.color);
    return backgorund;
  }
}
