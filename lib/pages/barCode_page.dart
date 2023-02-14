import 'package:flutter/material.dart';

class BarCode extends StatefulWidget {
  const BarCode({super.key});

  @override
  State<BarCode> createState() => _BarCodeState();
}

class _BarCodeState extends State<BarCode> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text("Boletos"),
    ));
  }
}
