import 'package:flutter/material.dart';

class DefaultConfig {
  //Colors
  static Color defaultTextFieldColor = const Color(0xFFF2F2F5);
  //static Color defaultThemeColor = const Color(0xFF3D43CC);
  static Color defaultThemeColor = const Color(0xFF2E3299);

  static Color defaultColorText = const Color(0xFF86848E);

  //TextStyle
  TextStyle defaultTextStyle(
      bool isBold, bool isGray, String? font, double size) {
    return TextStyle(
      fontFamily: font,
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      color: isGray ? defaultColorText : Colors.black,
      fontSize: size,
    );
  }
}

// querendo ter texto com a cor padrão ou preto automaticamente na hora de construir a tela 
