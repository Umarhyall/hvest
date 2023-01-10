import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color lightGreenA400 = fromHex('#84ec1c');

  static Color blueA400 = fromHex('#3484f0');

  static Color blue300F4 = fromHex('#f46fa8ff');

  static Color indigoA200 = fromHex('#4176ff');

  static Color blueA200 = fromHex('#3885ee');

  static Color deepPurple90093 = fromHex('#930400c4');

  static Color gray80001 = fromHex('#494b4a');

  static Color gray50 = fromHex('#fbfafa');

  static Color greenA400 = fromHex('#01d771');

  static Color greenA700 = fromHex('#00ff0a');

  static Color yellowA400 = fromHex('#fff200');

  static Color black900 = fromHex('#000000');

  static Color yellow700 = fromHex('#ffc42d');

  static Color blueA20001 = fromHex('#3986ee');

  static Color deepOrange800 = fromHex('#bd6627');

  static Color blueGray90001 = fromHex('#333333');

  static Color blueGray900 = fromHex('#313131');

  static Color orangeA200B2 = fromHex('#b2ffb23e');

  static Color deepPurpleA200 = fromHex('#a042ff');

  static Color blueA4007f = fromHex('#7f3484f0');

  static Color gray700 = fromHex('#666666');

  static Color gray400 = fromHex('#b3abab');

  static Color blueGray200 = fromHex('#abafbf');

  static Color gray500 = fromHex('#aaaaaa');

  static Color orangeA200 = fromHex('#ffb23e');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color blue700 = fromHex('#005de8');

  static Color blueGray400 = fromHex('#8d8d8d');

  static Color redA100 = fromHex('#fb8383');

  static Color gray800 = fromHex('#454444');

  static Color gray900 = fromHex('#121212');

  static Color indigoA40001 = fromHex('#475aff');

  static Color gray200 = fromHex('#eaeaea');

  static Color gray300 = fromHex('#dedede');

  static Color gray100 = fromHex('#f5f6f8');

  static Color blue7007c = fromHex('#7c005ee9');

  static Color gray40001 = fromHex('#b5b5b5');

  static Color gray40002 = fromHex('#b4abab');

  static Color bluegray400 = fromHex('#888888');

  static Color gray10001 = fromHex('#f1f2f4');

  static Color indigoA400 = fromHex('#4759ff');

  static Color indigo900 = fromHex('#052c77');

  static Color black90019 = fromHex('#19000000');

  static Color blueGray40001 = fromHex('#8b8b8b');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
