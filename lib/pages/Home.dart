import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toodoo_bank/core/default.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(DefaultConfig.defaultColorText)),
            onPressed: () {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(height: 300);
                  });
            },
            child: Text(
              "Como Deseja pagar o boleto",
              style: TextStyle(fontFamily: GoogleFonts.mulish().fontFamily),
            )),
      ),
    );
  }
}
