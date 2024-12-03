import 'package:flutter/material.dart';

class AppColors {
  static Color violet100 = HexColor.fromHex("#7F3DFF");
  static Color pureWhite = Colors.white;
  static Color pureBlack = Colors.black;
  static Color violet20 = HexColor.fromHex("#EEE5FF");
  static Color bgColor = HexColor.fromHex("#E5E5E5");
  static Color dark50 = HexColor.fromHex("#212325");
  static Color dark100 = HexColor.fromHex("#0D0E0F");
  static Color dark25 = HexColor.fromHex("#292B2D");
  static Color light20 = HexColor.fromHex("#91919F");
  static Color light80 = HexColor.fromHex("#FCFCFC");
  static Color light60 = HexColor.fromHex("#F1F1FA");
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
