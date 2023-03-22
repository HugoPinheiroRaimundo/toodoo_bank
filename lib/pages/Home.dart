import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
                    return const SizedBox(height: 300, child: HomeModals());
                  });
            },
            child: Text(
              "Toodoo bank Boletos",
              style: TextStyle(fontFamily: GoogleFonts.mulish().fontFamily),
            )),
      ),
    );
  }
}

class HomeModals extends StatelessWidget {
  const HomeModals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 33.0, right: 33.0, top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: DefaultConfig.defaultColorText),
                width: 50,
                height: 7,
                child: const Divider(
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 27.0),
              child: Text("Pagamentos",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("/");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset("assets/icons/barcodeIcon.svg"),
                    Text("Escanear código de barras",
                        style: TextStyle(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16)),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: DefaultConfig.defaultThemeColor,
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 28.0),
              child: Divider(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/ticketpage');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset("assets/icons/numberedKeyboard.svg"),
                    Text("Digitar código de barras",
                        style: TextStyle(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16)),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: DefaultConfig.defaultThemeColor,
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 18.0, bottom: 20),
              child: Divider(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
