import 'package:flutter/material.dart';
import 'package:toodoo_bank/pages/barCode_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/barCode',
      routes: {
        '/barCode': (_) => const BarCode(),
      },
    );
  }
}
