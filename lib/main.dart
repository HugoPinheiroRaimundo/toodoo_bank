import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toodoo_bank/pages/ticket_Confirm_page.dart';
import 'package:toodoo_bank/pages/ticket_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Adiciona font em todo o app
      theme: ThemeData(fontFamily: GoogleFonts.mulish().fontFamily),
      initialRoute: '/ticketpage',
      routes: {
        '/ticketpage': (_) => const TicketPage(),
        '/ticketconfirmpage': (_) => const TicketConfirm(),
      },
    );
  }
}
