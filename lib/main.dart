import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toodoo_bank/pages/ticket_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.openSans().fontFamily),
      initialRoute: '/barCode',
      routes: {
        '/barCode': (_) => const TicketPage(),
      },
    );
  }
}
